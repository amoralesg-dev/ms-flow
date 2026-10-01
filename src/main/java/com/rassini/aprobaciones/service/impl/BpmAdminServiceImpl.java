package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.ProcessDefinitionResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceDetailResponse;
import com.rassini.aprobaciones.dto.response.ProcessInstanceResponse;
import com.rassini.aprobaciones.dto.response.SolicitudHistorialResponse;
import com.rassini.aprobaciones.dto.response.SolicitudResponse;
import com.rassini.aprobaciones.dto.response.TareaProcesoResponse;
import com.rassini.aprobaciones.entity.Situacion;
import com.rassini.aprobaciones.entity.Solicitud;
import com.rassini.aprobaciones.entity.SolicitudHistorial;
import com.rassini.aprobaciones.entity.enums.AccionRealizada;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.exception.ResourceNotFoundException;
import com.rassini.aprobaciones.repository.SituacionRepository;
import com.rassini.aprobaciones.repository.SolicitudHistorialRepository;
import com.rassini.aprobaciones.repository.SolicitudRepository;
import com.rassini.aprobaciones.service.BpmAdminService;
import com.rassini.aprobaciones.service.SolicitudService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.bpmn.model.Event;
import org.flowable.bpmn.model.FlowElement;
import org.flowable.bpmn.model.FlowNode;
import org.flowable.bpmn.model.Gateway;
import org.flowable.bpmn.model.GraphicInfo;
import org.flowable.bpmn.model.Process;
import org.flowable.bpmn.model.SequenceFlow;
import org.flowable.engine.HistoryService;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.history.HistoricProcessInstance;
import org.flowable.engine.history.HistoricProcessInstanceQuery;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.engine.repository.ProcessDefinitionQuery;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.image.impl.DefaultProcessDiagramGenerator;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class BpmAdminServiceImpl implements BpmAdminService {

    private static final String ESTADO_ACTIVA = "ACTIVA";
    private static final String ESTADO_SUSPENDIDA = "SUSPENDIDA";
    private static final String ESTADO_COMPLETADA = "COMPLETADA";
    private static final String ESTADO_CANCELADA = "CANCELADA";
    private static final String PREFIJO_PROCESO_RUTA = "ruta_";
    private static final List<String> ESTADOS_FILTRO = List.of("activas", "terminadas", "todas");
    private static final int SITUACION_CANCELADA = 99;

    private final RepositoryService repositoryService;
    private final RuntimeService runtimeService;
    private final HistoryService historyService;
    private final TaskService taskService;
    private final SolicitudRepository solicitudRepository;
    private final SolicitudHistorialRepository historialRepository;
    private final SituacionRepository situacionRepository;
    private final SolicitudService solicitudService;

    @Override
    @Transactional(readOnly = true)
    public List<ProcessDefinitionResponse> listarProcesos(String proceso, boolean todasVersiones) {
        ProcessDefinitionQuery query = repositoryService.createProcessDefinitionQuery();
        if (proceso != null && !proceso.isBlank()) {
            query.processDefinitionKey(proceso.trim());
        }
        query.orderByProcessDefinitionKey().asc().orderByProcessDefinitionVersion().desc();

        List<ProcessDefinition> definiciones = query.list();
        Map<String, Integer> versionesMaximas = new HashMap<>();
        if (!todasVersiones) {
            Map<String, ProcessDefinition> ultimas = new LinkedHashMap<>();
            for (ProcessDefinition definicion : definiciones) {
                ProcessDefinition existente = ultimas.get(definicion.getKey());
                if (existente == null || definicion.getVersion() > existente.getVersion()) {
                    ultimas.put(definicion.getKey(), definicion);
                }
            }
            definiciones = new ArrayList<>(ultimas.values());
            definiciones.sort((a, b) -> a.getKey().compareToIgnoreCase(b.getKey()));
        } else {
            for (ProcessDefinition definicion : definiciones) {
                versionesMaximas.merge(definicion.getKey(), definicion.getVersion(), Math::max);
            }
        }

        Map<String, Date> fechasDespliegue = fechasDesplieguePorDeployment();
        List<ProcessDefinitionResponse> responses = new ArrayList<>();
        for (ProcessDefinition definicion : definiciones) {
            ProcessDefinitionResponse response = new ProcessDefinitionResponse();
            response.setId(definicion.getId());
            response.setProcessDefinitionKey(definicion.getKey());
            response.setName(definicion.getName());
            response.setClaveRuta(claveRutaDesdeKey(definicion.getKey()));
            response.setVersion(definicion.getVersion());
            response.setDeploymentId(definicion.getDeploymentId());
            response.setResourceName(definicion.getResourceName());
            response.setSuspendida(definicion.isSuspended());
            response.setFechaDespliegue(toLocalDateTime(fechasDespliegue.get(definicion.getDeploymentId())));
            if (todasVersiones) {
                Integer maxima = versionesMaximas.get(definicion.getKey());
                response.setEsUltimaVersion(maxima != null && maxima == definicion.getVersion());
            } else {
                response.setEsUltimaVersion(true);
            }
            responses.add(response);
        }
        return responses;
    }

    @Override
    @Transactional(readOnly = true)
    public byte[] obtenerXmlBpmn(String processDefinitionId) {
        ProcessDefinition definicion = buscarDefinicion(processDefinitionId);

        String resourceName = definicion.getResourceName();
        if (resourceName == null || resourceName.isBlank()) {
            List<String> recursos = repositoryService.getDeploymentResourceNames(definicion.getDeploymentId());
            resourceName = recursos.stream()
                    .filter(nombre -> nombre.endsWith(".bpmn20.xml") || nombre.endsWith(".bpmn"))
                    .findFirst()
                    .orElse(null);
        }
        if (resourceName == null) {
            throw new ResourceNotFoundException("No se encontró el recurso XML BPMN de la definición " + processDefinitionId);
        }

        InputStream recurso = repositoryService.getResourceAsStream(definicion.getDeploymentId(), resourceName);
        if (recurso == null) {
            throw new ResourceNotFoundException("No se encontró el recurso XML BPMN de la definición " + processDefinitionId);
        }
        try (InputStream flujo = recurso) {
            return flujo.readAllBytes();
        } catch (IOException ex) {
            throw new BusinessException("No se pudo leer el XML BPMN de la definición " + processDefinitionId);
        }
    }

    @Override
    @Transactional(readOnly = true)
    public byte[] generarDiagramaBpmn(String processDefinitionId) {
        ProcessDefinition definicion = buscarDefinicion(processDefinitionId);

        InputStream diagramaAlmacenado = null;
        try {
            diagramaAlmacenado = repositoryService.getProcessDiagram(definicion.getId());
        } catch (RuntimeException ex) {
            log.debug("La definición {} no tiene diagrama almacenado en el deployment", processDefinitionId);
        }
        if (diagramaAlmacenado != null) {
            try (InputStream flujo = diagramaAlmacenado) {
                return flujo.readAllBytes();
            } catch (IOException ex) {
                log.warn("No se pudo leer el diagrama almacenado de la definición {}, se regenerará", processDefinitionId);
            }
        }

        var model = repositoryService.getBpmnModel(definicion.getId());
        if (model == null) {
            throw new ResourceNotFoundException("No se pudo cargar el modelo BPMN de la definición " + processDefinitionId);
        }
        completarGrafico(model);
        try (InputStream diagrama = new DefaultProcessDiagramGenerator()
                .generateDiagram(model, "png", List.of(), List.of(), true)) {
            return diagrama.readAllBytes();
        } catch (IOException ex) {
            throw new BusinessException("No se pudo generar el diagrama BPMN de la definición " + processDefinitionId);
        } catch (RuntimeException ex) {
            log.error("Error generando el diagrama BPMN de la definición {}", processDefinitionId, ex);
            throw new BusinessException("No se pudo generar el diagrama BPMN de la definición " + processDefinitionId
                    + ": " + ex.getMessage());
        }
    }

    @Override
    public ProcessDefinitionResponse suspenderProceso(String processDefinitionId, boolean incluirInstancias) {
        ProcessDefinition definicion = buscarDefinicion(processDefinitionId);
        repositoryService.suspendProcessDefinitionById(definicion.getId(), incluirInstancias, null);
        return construirRespuestaDefinicion(processDefinitionId);
    }

    @Override
    public ProcessDefinitionResponse activarProceso(String processDefinitionId, boolean incluirInstancias) {
        ProcessDefinition definicion = buscarDefinicion(processDefinitionId);
        repositoryService.activateProcessDefinitionById(definicion.getId(), incluirInstancias, null);
        return construirRespuestaDefinicion(processDefinitionId);
    }

    @Override
    @Transactional(readOnly = true)
    public PageResponse<ProcessInstanceResponse> listarInstancias(String proceso, String estado, int page, int size) {
        String filtroEstado = estado == null ? "todas" : estado.trim().toLowerCase();
        if (!ESTADOS_FILTRO.contains(filtroEstado)) {
            throw new BusinessException("Estado inválido: " + estado + ". Valores permitidos: activas, terminadas, todas");
        }

        HistoricProcessInstanceQuery query = historyService.createHistoricProcessInstanceQuery();
        if (proceso != null && !proceso.isBlank()) {
            query.processDefinitionKey(proceso.trim());
        }
        switch (filtroEstado) {
            case "activas" -> query.unfinished();
            case "terminadas" -> query.finished();
            default -> {
            }
        }

        long total = query.count();
        int totalPages = (int) Math.ceil(total / (double) Math.max(1, size));
        long primero = (long) page * size;
        List<ProcessInstanceResponse> content = List.of();
        if (primero < total) {
            query.orderByProcessInstanceStartTime().desc();
            List<HistoricProcessInstance> instancias = query.listPage((int) primero, size);

            Set<String> ids = instancias.stream()
                    .map(HistoricProcessInstance::getId)
                    .collect(Collectors.toSet());
            Set<String> suspendidas = detectarSuspendidas(ids);
            Map<String, Solicitud> solicitudes = solicitudRepository.findByProcessInstanceIdIn(ids).stream()
                    .collect(Collectors.toMap(Solicitud::getProcessInstanceId, solicitud -> solicitud, (a, b) -> a));

            content = instancias.stream()
                    .map(instancia -> construirRespuestaInstancia(instancia,
                            solicitudes.get(instancia.getId()),
                            suspendidas.contains(instancia.getId())))
                    .toList();
        }

        return PageResponse.<ProcessInstanceResponse>builder()
                .content(content)
                .page(page)
                .size(size)
                .totalElements(total)
                .totalPages(totalPages)
                .build();
    }

    @Override
    @Transactional(readOnly = true)
    public ProcessInstanceDetailResponse obtenerInstancia(String processInstanceId) {
        HistoricProcessInstance instancia = historyService.createHistoricProcessInstanceQuery()
                .processInstanceId(processInstanceId)
                .singleResult();
        if (instancia == null) {
            throw new ResourceNotFoundException("Instancia de proceso no encontrada: " + processInstanceId);
        }

        ProcessInstanceDetailResponse response = new ProcessInstanceDetailResponse();
        response.setProcessInstanceId(instancia.getId());
        response.setProcessDefinitionId(instancia.getProcessDefinitionId());
        response.setProcessDefinitionKey(instancia.getProcessDefinitionKey());
        response.setProcessDefinitionName(instancia.getProcessDefinitionName());
        response.setProcessDefinitionVersion(instancia.getProcessDefinitionVersion());
        response.setInicio(toLocalDateTime(instancia.getStartTime()));
        response.setFin(toLocalDateTime(instancia.getEndTime()));
        response.setDuracionMs(instancia.getDurationInMillis());
        response.setMotivo(instancia.getDeleteReason());
        response.setEstado(derivarEstado(instancia));

        List<TareaProcesoResponse> tareas = taskService.createTaskQuery()
                .processInstanceId(processInstanceId)
                .orderByTaskCreateTime().asc()
                .list().stream()
                .map(this::construirRespuestaTarea)
                .toList();
        response.setTareasActivas(tareas);

        Optional<Solicitud> solicitudOpt = solicitudRepository.findByProcessInstanceId(processInstanceId);
        if (solicitudOpt.isPresent()) {
            Long solicitudId = solicitudOpt.get().getId();
            SolicitudResponse solicitud = solicitudService.obtener(solicitudId);
            List<SolicitudHistorialResponse> historial = solicitudService.historial(solicitudId);
            response.setSolicitud(solicitud);
            response.setHistorial(historial);
        } else {
            response.setHistorial(List.of());
        }
        return response;
    }

    @Override
    @Transactional
    public String cancelarInstancia(String processInstanceId, String motivo, String username) {
        boolean enEjecucion = runtimeService.createProcessInstanceQuery()
                .processInstanceId(processInstanceId).count() > 0;
        boolean historica = historyService.createHistoricProcessInstanceQuery()
                .processInstanceId(processInstanceId).count() > 0;
        if (!enEjecucion && !historica) {
            throw new ResourceNotFoundException("Instancia de proceso no encontrada: " + processInstanceId);
        }

        String razon = motivo == null || motivo.isBlank() ? "Cancelada por administrador" : motivo.trim();
        if (enEjecucion) {
            runtimeService.deleteProcessInstance(processInstanceId, razon);
        } else {
            historyService.deleteHistoricProcessInstance(processInstanceId);
        }

        Optional<Solicitud> solicitudOpt = solicitudRepository.findByProcessInstanceId(processInstanceId);
        if (solicitudOpt.isPresent()) {
            Solicitud solicitud = solicitudOpt.get();
            boolean sincronizada = false;
            if (Boolean.TRUE.equals(solicitud.getActiva())
                    || solicitud.getSituacionActual() == null
                    || solicitud.getSituacionActual().getCodigo() != SITUACION_CANCELADA) {
                Situacion cancelada = situacionRepository.getReferenceById(SITUACION_CANCELADA);
                Situacion anterior = solicitud.getSituacionActual();
                solicitud.setSituacionActual(cancelada);
                solicitud.setActiva(false);
                solicitudRepository.save(solicitud);

                SolicitudHistorial historial = SolicitudHistorial.builder()
                        .solicitud(solicitud)
                        .situacionAnterior(anterior)
                        .situacionNueva(cancelada)
                        .accion(AccionRealizada.CANCELADA)
                        .comentario(razon)
                        .usuarioUsername(username)
                        .fechaEvento(LocalDateTime.now())
                        .build();
                historialRepository.save(historial);
                sincronizada = true;
            }
            return mensajeCancelacion(enEjecucion, processInstanceId, solicitud.getFolio(), sincronizada);
        }
        return mensajeCancelacion(enEjecucion, processInstanceId, null, false);
    }

    private ProcessDefinition buscarDefinicion(String processDefinitionId) {
        ProcessDefinition definicion = repositoryService.createProcessDefinitionQuery()
                .processDefinitionId(processDefinitionId)
                .singleResult();
        if (definicion == null) {
            throw new ResourceNotFoundException("Definición de proceso no encontrada: " + processDefinitionId);
        }
        return definicion;
    }

    private ProcessDefinitionResponse construirRespuestaDefinicion(String processDefinitionId) {
        ProcessDefinition definicion = buscarDefinicion(processDefinitionId);
        Deployment deployment = repositoryService.createDeploymentQuery()
                .deploymentId(definicion.getDeploymentId())
                .singleResult();
        ProcessDefinition ultima = repositoryService.createProcessDefinitionQuery()
                .processDefinitionKey(definicion.getKey())
                .latestVersion()
                .singleResult();

        ProcessDefinitionResponse response = new ProcessDefinitionResponse();
        response.setId(definicion.getId());
        response.setProcessDefinitionKey(definicion.getKey());
        response.setName(definicion.getName());
        response.setClaveRuta(claveRutaDesdeKey(definicion.getKey()));
        response.setVersion(definicion.getVersion());
        response.setDeploymentId(definicion.getDeploymentId());
        response.setResourceName(definicion.getResourceName());
        response.setSuspendida(definicion.isSuspended());
        response.setFechaDespliegue(toLocalDateTime(deployment == null ? null : deployment.getDeploymentTime()));
        response.setEsUltimaVersion(ultima != null && ultima.getId().equals(definicion.getId()));
        return response;
    }

    private Map<String, Date> fechasDesplieguePorDeployment() {
        return repositoryService.createDeploymentQuery().list().stream()
                .collect(Collectors.toMap(Deployment::getId, Deployment::getDeploymentTime, (a, b) -> a));
    }

    private Set<String> detectarSuspendidas(Set<String> processInstanceIds) {
        if (processInstanceIds == null || processInstanceIds.isEmpty()) {
            return Set.of();
        }
        return runtimeService.createProcessInstanceQuery()
                .processInstanceIds(processInstanceIds)
                .suspended()
                .list().stream()
                .map(ProcessInstance::getProcessInstanceId)
                .collect(Collectors.toSet());
    }

    private ProcessInstanceResponse construirRespuestaInstancia(HistoricProcessInstance instancia,
                                                                Solicitud solicitud,
                                                                boolean suspendida) {
        ProcessInstanceResponse response = new ProcessInstanceResponse();
        response.setProcessInstanceId(instancia.getId());
        response.setProcessDefinitionId(instancia.getProcessDefinitionId());
        response.setProcessDefinitionKey(instancia.getProcessDefinitionKey());
        response.setProcessDefinitionName(instancia.getProcessDefinitionName());
        response.setProcessDefinitionVersion(instancia.getProcessDefinitionVersion());
        response.setInicio(toLocalDateTime(instancia.getStartTime()));
        response.setFin(toLocalDateTime(instancia.getEndTime()));
        response.setEstado(instancia.getEndTime() != null
                ? (instancia.getDeleteReason() != null ? ESTADO_CANCELADA : ESTADO_COMPLETADA)
                : (suspendida ? ESTADO_SUSPENDIDA : ESTADO_ACTIVA));
        response.setMotivo(instancia.getDeleteReason());
        if (solicitud != null) {
            response.setSolicitudId(solicitud.getId());
            response.setFolio(solicitud.getFolio());
            response.setClaveRuta(solicitud.getRuta().getClaveRuta());
            response.setSolicitanteUsername(solicitud.getSolicitanteUsername());
            response.setSituacionActualCodigo(solicitud.getSituacionActual().getCodigo());
            response.setSituacionActualDescripcion(solicitud.getSituacionActual().getDescripcionLarga());
            response.setSolicitudActiva(solicitud.getActiva());
        }
        return response;
    }

    private String derivarEstado(HistoricProcessInstance instancia) {
        if (instancia.getEndTime() != null) {
            return instancia.getDeleteReason() != null ? ESTADO_CANCELADA : ESTADO_COMPLETADA;
        }
        boolean suspendida = runtimeService.createProcessInstanceQuery()
                .processInstanceId(instancia.getId())
                .suspended().count() > 0;
        return suspendida ? ESTADO_SUSPENDIDA : ESTADO_ACTIVA;
    }

    private TareaProcesoResponse construirRespuestaTarea(Task tarea) {
        TareaProcesoResponse response = new TareaProcesoResponse();
        response.setId(tarea.getId());
        response.setName(tarea.getName());
        response.setTaskDefinitionKey(tarea.getTaskDefinitionKey());
        response.setAssignee(tarea.getAssignee());
        response.setFechaCreacion(toLocalDateTime(tarea.getCreateTime()));
        return response;
    }

    private String claveRutaDesdeKey(String processDefinitionKey) {
        if (processDefinitionKey == null || !processDefinitionKey.startsWith(PREFIJO_PROCESO_RUTA)) {
            return null;
        }
        return processDefinitionKey.substring(PREFIJO_PROCESO_RUTA.length());
    }

    private void completarGrafico(BpmnModel model) {
        Map<String, GraphicInfo> ubicaciones = model.getLocationMap();
        Map<String, List<GraphicInfo>> flujos = model.getFlowLocationMap();
        if (ubicaciones == null) {
            ubicaciones = new HashMap<>();
        }
        if (flujos == null) {
            flujos = new HashMap<>();
        }

        double columna = 0;
        double fila = 0;
        for (Process proceso : model.getProcesses()) {
            for (FlowElement elemento : proceso.getFlowElements()) {
                if (!(elemento instanceof FlowNode nodo)) {
                    continue;
                }
                double ancho = nodo instanceof Event ? 40.0 : nodo instanceof Gateway ? 80.0 : 120.0;
                double alto = nodo instanceof Event ? 40.0 : 80.0;
                GraphicInfo grafico = ubicaciones.get(nodo.getId());
                if (grafico == null) {
                    grafico = new GraphicInfo();
                    grafico.setX(40 + columna * 240);
                    grafico.setY(40 + fila * 170);
                    ubicaciones.put(nodo.getId(), grafico);
                    columna++;
                    if (columna > 3) {
                        columna = 0;
                        fila++;
                    }
                }
                if (grafico.getWidth() <= 0) {
                    grafico.setWidth(ancho);
                }
                if (grafico.getHeight() <= 0) {
                    grafico.setHeight(alto);
                }
            }
        }

        for (Process proceso : model.getProcesses()) {
            for (FlowElement elemento : proceso.getFlowElements()) {
                if (!(elemento instanceof SequenceFlow flujo)) {
                    continue;
                }
                List<GraphicInfo> puntos = flujos.get(flujo.getId());
                if ((puntos == null || puntos.isEmpty()) && ubicaciones.containsKey(flujo.getSourceRef())
                        && ubicaciones.containsKey(flujo.getTargetRef())) {
                    GraphicInfo origen = ubicaciones.get(flujo.getSourceRef());
                    GraphicInfo destino = ubicaciones.get(flujo.getTargetRef());
                    List<GraphicInfo> trazo = new ArrayList<>();
                    trazo.add(punto(origen));
                    trazo.add(punto(destino));
                    flujos.put(flujo.getId(), trazo);
                }
            }
        }
    }

    private GraphicInfo punto(GraphicInfo centro) {
        GraphicInfo punto = new GraphicInfo();
        punto.setX(centro.getX() + centro.getWidth() / 2);
        punto.setY(centro.getY() + centro.getHeight() / 2);
        return punto;
    }

    private String mensajeCancelacion(boolean enEjecucion, String processInstanceId, String folio, boolean sincronizada) {
        StringBuilder mensaje = new StringBuilder();
        if (enEjecucion) {
            mensaje.append("Instancia de proceso ").append(processInstanceId).append(" cancelada");
        } else {
            mensaje.append("Instancia de proceso ").append(processInstanceId)
                    .append(" eliminada del historial (ya estaba terminada)");
        }
        if (folio != null) {
            mensaje.append(" — folio ").append(folio);
        }
        if (sincronizada) {
            mensaje.append(" — solicitud marcada como cancelada");
        }
        return mensaje.toString();
    }

    private LocalDateTime toLocalDateTime(Date fecha) {
        if (fecha == null) {
            return null;
        }
        return LocalDateTime.ofInstant(fecha.toInstant(), ZoneId.systemDefault());
    }
}
