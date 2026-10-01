package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.dto.request.ActualizarRutaRequest;
import com.rassini.aprobaciones.dto.request.CrearRutaRequest;
import com.rassini.aprobaciones.dto.request.RutaTransicionRequest;
import com.rassini.aprobaciones.dto.response.BpmProcesoRutaResponse;
import com.rassini.aprobaciones.dto.response.RutaAdminResponse;
import com.rassini.aprobaciones.entity.Ruta;
import com.rassini.aprobaciones.entity.RutaTransicion;
import com.rassini.aprobaciones.entity.Situacion;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.exception.ResourceNotFoundException;
import com.rassini.aprobaciones.mapper.RutaTransicionMapper;
import com.rassini.aprobaciones.repository.RutaRepository;
import com.rassini.aprobaciones.repository.RutaTransicionRepository;
import com.rassini.aprobaciones.repository.SituacionRepository;
import com.rassini.aprobaciones.service.BpmnGeneratorService;
import com.rassini.aprobaciones.service.RutaAdminService;
import lombok.RequiredArgsConstructor;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
public class RutaAdminServiceImpl implements RutaAdminService {

    private static final Set<Integer> SITUACIONES_INICIALES = Set.of(20, 60);

    private final RutaRepository rutaRepository;
    private final RutaTransicionRepository rutaTransicionRepository;
    private final SituacionRepository situacionRepository;
    private final BpmnGeneratorService bpmnGeneratorService;
    private final RutaTransicionMapper rutaTransicionMapper;
    private final RepositoryService repositoryService;

    @Override
    @Transactional(readOnly = true)
    public List<RutaAdminResponse> listar(String filtro, Boolean activa) {
        String termino = filtro == null ? null : filtro.trim().toLowerCase();
        Stream<Ruta> stream = rutaRepository.findAll(Sort.by(Sort.Direction.ASC, "claveRuta")).stream();
        if (activa != null) {
            stream = stream.filter(r -> activa.equals(r.getActiva()));
        }
        if (termino != null && !termino.isBlank()) {
            stream = stream.filter(r -> r.getClaveRuta().toLowerCase().contains(termino)
                    || r.getDescripcion().toLowerCase().contains(termino));
        }
        Map<String, ProcessDefinition> definiciones = ultimasDefinicionesPorClave();
        Map<String, Date> fechasDespliegue = fechasDesplieguePorDeployment();
        return stream.map(r -> {
            RutaAdminResponse response = toResumen(r);
            completarConProcesoBpm(response,
                    definiciones.get(bpmnGeneratorService.processKey(r.getClaveRuta())), fechasDespliegue);
            return response;
        }).toList();
    }

    @Override
    @Transactional(readOnly = true)
    public RutaAdminResponse obtener(Long id) {
        return toDetalle(getRuta(id));
    }

    @Override
    @Transactional
    public RutaAdminResponse crear(CrearRutaRequest request) {
        String claveRuta = request.getClaveRuta().trim();
        if (rutaRepository.existsByClaveRutaIgnoreCase(claveRuta)) {
            throw new BusinessException("Ya existe una ruta con la clave " + claveRuta);
        }

        boolean activa = Boolean.TRUE.equals(request.getActiva());
        List<RutaTransicion> transiciones = resolverTransiciones(claveRuta, request.getTransiciones(), activa);

        Ruta ruta = Ruta.builder()
                .claveRuta(claveRuta)
                .descripcion(request.getDescripcion().trim())
                .activa(activa)
                .build();
        transiciones.forEach(t -> {
            t.setRuta(ruta);
            ruta.getTransiciones().add(t);
        });

        return toDetalle(rutaRepository.save(ruta));
    }

    @Override
    @Transactional
    public RutaAdminResponse actualizar(Long id, ActualizarRutaRequest request) {
        Ruta ruta = getRuta(id);
        boolean activa = Boolean.TRUE.equals(request.getActiva());
        List<RutaTransicion> transiciones = resolverTransiciones(ruta.getClaveRuta(), request.getTransiciones(), activa);

        ruta.setDescripcion(request.getDescripcion().trim());
        ruta.setActiva(activa);

        // Reemplazo integral de transiciones: se eliminan las actuales y se insertan las recibidas.
        ruta.getTransiciones().clear();
        rutaTransicionRepository.flush();

        transiciones.forEach(t -> t.setRuta(ruta));
        ruta.getTransiciones().addAll(transiciones);
        rutaTransicionRepository.saveAll(transiciones);

        return toDetalle(ruta);
    }

    @Override
    @Transactional
    public RutaAdminResponse desplegarBpmn(Long id) {
        Ruta ruta = getRuta(id);
        bpmnGeneratorService.generarYDesplegarProceso(ruta.getClaveRuta());
        return toDetalle(ruta);
    }

    private Ruta getRuta(Long id) {
        return rutaRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Ruta no encontrada"));
    }

    private Map<String, ProcessDefinition> ultimasDefinicionesPorClave() {
        Map<String, ProcessDefinition> ultimas = new HashMap<>();
        for (ProcessDefinition definicion : repositoryService.createProcessDefinitionQuery()
                .orderByProcessDefinitionVersion().desc().list()) {
            ProcessDefinition existente = ultimas.get(definicion.getKey());
            if (existente == null || definicion.getVersion() > existente.getVersion()) {
                ultimas.put(definicion.getKey(), definicion);
            }
        }
        return ultimas;
    }

    private Map<String, Date> fechasDesplieguePorDeployment() {
        return repositoryService.createDeploymentQuery().list().stream()
                .collect(Collectors.toMap(Deployment::getId, Deployment::getDeploymentTime, (a, b) -> a));
    }

    private void completarConProcesoBpm(RutaAdminResponse response,
                                        ProcessDefinition definicion,
                                        Map<String, Date> fechasDespliegue) {
        if (definicion == null) {
            return;
        }
        response.setProcesoBpm(construirProcesoBpm(definicion, fechasDespliegue.get(definicion.getDeploymentId())));
    }

    private BpmProcesoRutaResponse procesoBpmDeRuta(String claveRuta) {
        ProcessDefinition definicion = repositoryService.createProcessDefinitionQuery()
                .processDefinitionKey(bpmnGeneratorService.processKey(claveRuta))
                .latestVersion()
                .singleResult();
        if (definicion == null) {
            return null;
        }
        Deployment deployment = repositoryService.createDeploymentQuery()
                .deploymentId(definicion.getDeploymentId())
                .singleResult();
        return construirProcesoBpm(definicion, deployment == null ? null : deployment.getDeploymentTime());
    }

    private BpmProcesoRutaResponse construirProcesoBpm(ProcessDefinition definicion, Date fechaDespliegue) {
        BpmProcesoRutaResponse proceso = new BpmProcesoRutaResponse();
        proceso.setDesplegado(true);
        proceso.setProcessDefinitionId(definicion.getId());
        proceso.setProcessDefinitionKey(definicion.getKey());
        proceso.setVersion(definicion.getVersion());
        proceso.setSuspendida(definicion.isSuspended());
        proceso.setFechaDespliegue(fechaDespliegue == null
                ? null
                : LocalDateTime.ofInstant(fechaDespliegue.toInstant(), ZoneId.systemDefault()));
        return proceso;
    }

    private List<RutaTransicion> resolverTransiciones(String claveRuta,
                                                      List<RutaTransicionRequest> requests,
                                                      boolean activa) {
        List<RutaTransicionRequest> lista = requests == null ? List.of() : requests;

        if (lista.isEmpty() && activa) {
            throw new BusinessException("Una ruta activa requiere al menos una transición");
        }

        Set<Integer> codigosRequeridos = new HashSet<>();
        Set<String> pares = new HashSet<>();
        boolean cubreSituacionInicial = false;

        for (RutaTransicionRequest req : lista) {
            if (req.getSituacionActualCodigo() == null) {
                throw new BusinessException("Toda transición requiere situacionActualCodigo");
            }
            if (SITUACIONES_INICIALES.contains(req.getSituacionActualCodigo())) {
                cubreSituacionInicial = true;
            }
            if (req.getSituacionSiguienteCodigo() != null
                    && req.getSituacionSiguienteCodigo().equals(req.getSituacionActualCodigo())) {
                throw new BusinessException("Transición inválida: la situación siguiente no puede ser igual a la actual ("
                        + req.getSituacionActualCodigo() + ")");
            }

            codigosRequeridos.add(req.getSituacionActualCodigo());
            agregarCodigoSiAplica(codigosRequeridos, req.getSituacionAnteriorCodigo());
            agregarCodigoSiAplica(codigosRequeridos, req.getSituacionSiguienteCodigo());

            String par = req.getSituacionActualCodigo() + " -> "
                    + (req.getSituacionSiguienteCodigo() == null || req.getSituacionSiguienteCodigo() == 0
                            ? "FIN" : req.getSituacionSiguienteCodigo());
            if (!pares.add(par)) {
                throw new BusinessException("Transición duplicada para la ruta " + claveRuta + ": " + par);
            }
        }

        if (activa && !cubreSituacionInicial) {
            throw new BusinessException("Una ruta activa debe incluir una transición desde la situación inicial 20 ó 60");
        }

        if (codigosRequeridos.isEmpty()) {
            return List.of();
        }

        Map<Integer, Situacion> existentes = situacionRepository.findAllById(codigosRequeridos).stream()
                .collect(HashMap::new, (m, s) -> m.put(s.getCodigo(), s), HashMap::putAll);

        List<Integer> faltantes = codigosRequeridos.stream()
                .filter(c -> !existentes.containsKey(c))
                .sorted()
                .toList();
        if (!faltantes.isEmpty()) {
            throw new BusinessException("Situaciones inexistentes en el catálogo: " + faltantes);
        }

        return lista.stream().map(req -> RutaTransicion.builder()
                .situacionActual(existentes.get(req.getSituacionActualCodigo()))
                .situacionAnterior(resolverSituacion(req.getSituacionAnteriorCodigo(), existentes))
                .situacionSiguiente(resolverSituacion(req.getSituacionSiguienteCodigo(), existentes))
                .solicitarPassword(Boolean.TRUE.equals(req.getSolicitarPassword()))
                .build()).toList();
    }

    private void agregarCodigoSiAplica(Set<Integer> codigos, Integer codigo) {
        if (codigo != null && codigo != 0) {
            codigos.add(codigo);
        }
    }

    private Situacion resolverSituacion(Integer codigo, Map<Integer, Situacion> existentes) {
        if (codigo == null || codigo == 0) {
            return null;
        }
        return existentes.get(codigo);
    }

    private RutaAdminResponse toResumen(Ruta ruta) {
        RutaAdminResponse response = new RutaAdminResponse();
        response.setId(ruta.getId());
        response.setClaveRuta(ruta.getClaveRuta());
        response.setDescripcion(ruta.getDescripcion());
        response.setActiva(ruta.getActiva());
        return response;
    }

    private RutaAdminResponse toDetalle(Ruta ruta) {
        RutaAdminResponse response = toResumen(ruta);
        response.setTransiciones(rutaTransicionMapper.toResponseList(
                rutaTransicionRepository.findDetallePorRuta(ruta.getClaveRuta())));
        response.setProcesoBpm(procesoBpmDeRuta(ruta.getClaveRuta()));
        return response;
    }
}
