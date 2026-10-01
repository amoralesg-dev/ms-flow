package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.dto.request.CrearSolicitudRequest;
import com.rassini.aprobaciones.dto.request.TransicionRequest;
import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.SolicitudHistorialResponse;
import com.rassini.aprobaciones.dto.response.SolicitudResponse;
import com.rassini.aprobaciones.entity.Ruta;
import com.rassini.aprobaciones.entity.RutaTransicion;
import com.rassini.aprobaciones.entity.Situacion;
import com.rassini.aprobaciones.entity.Solicitud;
import com.rassini.aprobaciones.entity.SolicitudHistorial;
import com.rassini.aprobaciones.entity.enums.AccionRealizada;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.exception.ResourceNotFoundException;
import com.rassini.aprobaciones.mapper.SolicitudMapper;
import com.rassini.aprobaciones.repository.RutaRepository;
import com.rassini.aprobaciones.repository.SituacionRepository;
import com.rassini.aprobaciones.repository.SolicitudHistorialRepository;
import com.rassini.aprobaciones.repository.SolicitudRepository;
import com.rassini.aprobaciones.service.BpmnGeneratorService;
import com.rassini.aprobaciones.service.FolioGeneratorService;
import com.rassini.aprobaciones.service.PasswordService;
import com.rassini.aprobaciones.service.SolicitudService;
import com.rassini.aprobaciones.service.TransicionService;
import lombok.RequiredArgsConstructor;
import org.flowable.engine.RuntimeService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SolicitudServiceImpl implements SolicitudService {

    private final SolicitudRepository solicitudRepository;
    private final SolicitudHistorialRepository historialRepository;
    private final RutaRepository rutaRepository;
    private final SituacionRepository situacionRepository;
    private final FolioGeneratorService folioGeneratorService;
    private final TransicionService transicionService;
    private final PasswordService passwordService;
    private final BpmnGeneratorService bpmnGeneratorService;
    private final SolicitudMapper solicitudMapper;
    private final RuntimeService runtimeService;

    @Override
    @Transactional
    public SolicitudResponse crear(CrearSolicitudRequest request, String username) {
        Ruta ruta = rutaRepository.findByClaveRutaAndActivaTrue(request.getClaveRuta())
                .orElseThrow(() -> new ResourceNotFoundException("Ruta no encontrada"));

        TipoFlujo flujo = definirFlujo(request.getTipoSolicitud().name());
        Integer situacionInicial = flujo == TipoFlujo.COMPROBACIONES ? 20 : 60;
        Situacion situacion = situacionRepository.findById(situacionInicial)
                .orElseThrow(() -> new ResourceNotFoundException("Situación inicial no encontrada"));

        String processDefinitionKey = bpmnGeneratorService.generarYDesplegarProceso(ruta.getClaveRuta());
        var processInstance = runtimeService.startProcessInstanceByKey(processDefinitionKey);

        Solicitud solicitud = Solicitud.builder()
                .folio(folioGeneratorService.generarFolio(flujo))
                .tipoSolicitud(request.getTipoSolicitud())
                .tipoFlujo(flujo)
                .descripcion(request.getDescripcion())
                .monto(request.getMonto())
                .referenciaExterna(request.getReferenciaExterna())
                .solicitanteUsername(username)
                .ruta(ruta)
                .situacionActual(situacion)
                .processDefinitionKey(processDefinitionKey)
                .processInstanceId(processInstance.getProcessInstanceId())
                .activa(true)
                .build();

        Solicitud guardada = solicitudRepository.save(solicitud);
        guardarHistorial(guardada, null, situacion, AccionRealizada.CREADA, "Solicitud creada", username);

        return solicitudMapper.toResponse(guardada);
    }

    @Override
    @Transactional(readOnly = true)
    public SolicitudResponse obtener(Long id) {
        return solicitudMapper.toResponse(obtenerEntidad(id));
    }

    @Override
    @Transactional(readOnly = true)
    public PageResponse<SolicitudResponse> listar(TipoFlujo tipoFlujo, Integer situacionCodigo, int page, int size) {
        Page<Solicitud> result = solicitudRepository.buscarSolicitudes(tipoFlujo, situacionCodigo, PageRequest.of(page, size));
        return PageResponse.<SolicitudResponse>builder()
                .content(result.getContent().stream().map(solicitudMapper::toResponse).toList())
                .page(result.getNumber())
                .size(result.getSize())
                .totalElements(result.getTotalElements())
                .totalPages(result.getTotalPages())
                .build();
    }

    @Override
    @Transactional
    public SolicitudResponse transicionar(Long solicitudId, TransicionRequest request, String username) {
        Solicitud solicitud = obtenerEntidad(solicitudId);

        RutaTransicion transicion = transicionService.validarYObtenerTransicion(
                solicitud.getRuta().getClaveRuta(),
                solicitud.getSituacionActual().getCodigo(),
                request.getSituacionDestino()
        );

        if (Boolean.TRUE.equals(transicion.getSolicitarPassword())) {
            if (request.getPassword() == null || request.getPassword().isBlank()) {
                throw new BusinessException("Esta transición requiere password");
            }
            if (!passwordService.validarPassword(solicitud.getRuta().getClaveRuta(), solicitud.getSituacionActual().getCodigo(), request.getPassword())) {
                throw new BusinessException("Password inválido");
            }
        }

        Situacion anterior = solicitud.getSituacionActual();
        Situacion siguiente = transicion.getSituacionSiguiente();
        if (siguiente == null) {
            throw new BusinessException("No existe situación destino configurada");
        }

        solicitud.setSituacionActual(siguiente);
        if (siguiente.getCodigo() == 99) {
            solicitud.setActiva(false);
        }
        Solicitud actualizada = solicitudRepository.save(solicitud);
        guardarHistorial(actualizada, anterior, siguiente, AccionRealizada.AVANZADA, request.getComentario(), username);

        return solicitudMapper.toResponse(actualizada);
    }

    @Override
    @Transactional(readOnly = true)
    public List<SolicitudHistorialResponse> historial(Long solicitudId) {
        return historialRepository.findBySolicitudIdOrderByFechaEventoAsc(solicitudId).stream().map(h -> {
            SolicitudHistorialResponse response = new SolicitudHistorialResponse();
            response.setId(h.getId());
            response.setSituacionAnterior(h.getSituacionAnterior() != null ? h.getSituacionAnterior().getCodigo() : null);
            response.setSituacionNueva(h.getSituacionNueva().getCodigo());
            response.setAccion(h.getAccion());
            response.setComentario(h.getComentario());
            response.setUsuario(h.getUsuarioUsername());
            response.setFechaEvento(h.getFechaEvento());
            return response;
        }).toList();
    }

    private TipoFlujo definirFlujo(String tipoSolicitud) {
        if ("FOLIO".equalsIgnoreCase(tipoSolicitud)) {
            return TipoFlujo.FOLIOS;
        }
        return TipoFlujo.COMPROBACIONES;
    }

    private Solicitud obtenerEntidad(Long id) {
        return solicitudRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Solicitud no encontrada"));
    }

    private void guardarHistorial(Solicitud solicitud,
                                  Situacion anterior,
                                  Situacion nueva,
                                  AccionRealizada accion,
                                  String comentario,
                                  String username) {
        SolicitudHistorial historial = SolicitudHistorial.builder()
                .solicitud(solicitud)
                .situacionAnterior(anterior)
                .situacionNueva(nueva)
                .accion(accion)
                .comentario(comentario)
                .usuarioUsername(username)
                .fechaEvento(LocalDateTime.now())
                .build();
        historialRepository.save(historial);
    }
}
