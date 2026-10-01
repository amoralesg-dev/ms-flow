package com.rassini.aprobaciones.controller;

import com.rassini.aprobaciones.dto.request.ActualizarRutaRequest;
import com.rassini.aprobaciones.dto.request.CrearRutaRequest;
import com.rassini.aprobaciones.dto.response.RutaAdminResponse;
import com.rassini.aprobaciones.service.RutaAdminService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/admin/rutas")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
public class RutaAdminController {

    private final RutaAdminService rutaAdminService;

    @Operation(summary = "Listar rutas para administración (activas e inactivas)")
    @GetMapping
    public List<RutaAdminResponse> listar(@RequestParam(required = false) String filtro,
                                          @RequestParam(required = false) Boolean activa) {
        return rutaAdminService.listar(filtro, activa);
    }

    @Operation(summary = "Obtener detalle de una ruta con sus transiciones")
    @GetMapping("/{id}")
    public RutaAdminResponse obtener(@PathVariable Long id) {
        return rutaAdminService.obtener(id);
    }

    @Operation(summary = "Crear una nueva ruta con sus transiciones")
    @PostMapping
    public ResponseEntity<RutaAdminResponse> crear(@Valid @RequestBody CrearRutaRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(rutaAdminService.crear(request));
    }

    @Operation(summary = "Actualizar ruta (descripción, estado y transiciones)")
    @PutMapping("/{id}")
    public RutaAdminResponse actualizar(@PathVariable Long id,
                                        @Valid @RequestBody ActualizarRutaRequest request) {
        return rutaAdminService.actualizar(id, request);
    }

    @Operation(summary = "Generar y desplegar el BPMN de la ruta en Flowable (devuelve la ruta con su información de despliegue)")
    @PostMapping("/{id}/desplegar-bpmn")
    public RutaAdminResponse desplegarBpmn(@PathVariable Long id) {
        return rutaAdminService.desplegarBpmn(id);
    }
}
