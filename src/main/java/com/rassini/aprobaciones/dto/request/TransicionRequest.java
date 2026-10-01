package com.rassini.aprobaciones.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class TransicionRequest {
    @NotNull
    private Integer situacionDestino;
    private String comentario;
    private String password;
}
