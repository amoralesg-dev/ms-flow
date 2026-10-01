package com.rassini.aprobaciones.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class RutaTransicionRequest {

    private Long id;

    @NotNull(message = "situacionActualCodigo es requerido")
    private Integer situacionActualCodigo;

    private Integer situacionAnteriorCodigo;

    private Integer situacionSiguienteCodigo;

    private Boolean solicitarPassword = false;
}
