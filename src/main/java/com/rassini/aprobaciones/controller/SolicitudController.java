package com.rassini.aprobaciones.controller;

import com.rassini.aprobaciones.dto.request.CrearSolicitudRequest;
import com.rassini.aprobaciones.dto.request.TransicionRequest;
import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.SolicitudHistorialResponse;
import com.rassini.aprobaciones.dto.response.SolicitudResponse;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.service.SolicitudService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/solicitudes")
@RequiredArgsConstructor
public class SolicitudController {

    private final SolicitudService solicitudService;

    @Operation(summary = "Crear nueva solicitud")
    @PostMapping
    public SolicitudResponse crear(@Valid @RequestBody CrearSolicitudRequest request, Authentication authentication) {
        return solicitudService.crear(request, authentication.getName());
    }

    @Operation(summary = "Obtener solicitud por id")
    @GetMapping("/{id}")
    public SolicitudResponse obtener(@PathVariable Long id) {
        return solicitudService.obtener(id);
    }

    @Operation(summary = "Listar solicitudes")
    @GetMapping
    public PageResponse<SolicitudResponse> listar(
            @RequestParam(required = false) TipoFlujo tipoFlujo,
            @RequestParam(required = false) Integer situacion,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return solicitudService.listar(tipoFlujo, situacion, page, size);
    }

    @Operation(summary = "Ejecutar transición de solicitud")
    @PostMapping("/{id}/transiciones")
    public SolicitudResponse transicionar(@PathVariable Long id,
                                          @Valid @RequestBody TransicionRequest request,
                                          Authentication authentication) {
        return solicitudService.transicionar(id, request, authentication.getName());
    }

    @Operation(summary = "Consultar historial de solicitud")
    @GetMapping("/{id}/historial")
    public List<SolicitudHistorialResponse> historial(@PathVariable Long id) {
        return solicitudService.historial(id);
    }
}
