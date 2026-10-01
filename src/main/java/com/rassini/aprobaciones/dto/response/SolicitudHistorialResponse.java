package com.rassini.aprobaciones.dto.response;

import com.rassini.aprobaciones.entity.enums.AccionRealizada;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class SolicitudHistorialResponse {
    private Long id;
    private Integer situacionAnterior;
    private Integer situacionNueva;
    private AccionRealizada accion;
    private String comentario;
    private String usuario;
    private LocalDateTime fechaEvento;
}
