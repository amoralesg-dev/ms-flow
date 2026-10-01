package com.rassini.aprobaciones.dto.request;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.List;

@Data
public class ActualizarRutaRequest {

    @NotBlank(message = "descripcion es requerida")
    @Size(max = 255, message = "descripcion no debe exceder 255 caracteres")
    private String descripcion;

    @NotNull(message = "activa es requerido")
    private Boolean activa;

    @Valid
    private List<RutaTransicionRequest> transiciones;
}
