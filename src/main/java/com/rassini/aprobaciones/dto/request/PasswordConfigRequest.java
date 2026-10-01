package com.rassini.aprobaciones.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class PasswordConfigRequest {
    @NotBlank
    private String claveRuta;
    @NotNull
    private Integer situacionActualCodigo;
    @NotBlank
    private String passwordPlano;
    private Integer maxIntentos = 3;
}
