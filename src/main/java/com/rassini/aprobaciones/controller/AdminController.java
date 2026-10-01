package com.rassini.aprobaciones.controller;

import com.rassini.aprobaciones.dto.request.PasswordConfigRequest;
import com.rassini.aprobaciones.service.PasswordService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/admin")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
public class AdminController {

    private final PasswordService passwordService;

    @Operation(summary = "Guardar configuración de password por transición")
    @PostMapping("/password-config")
    public ResponseEntity<Void> guardarPasswordConfig(@Valid @RequestBody PasswordConfigRequest request) {
        passwordService.guardarConfiguracion(request);
        return ResponseEntity.ok().build();
    }
}
