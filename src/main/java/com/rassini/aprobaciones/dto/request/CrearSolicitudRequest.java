package com.rassini.aprobaciones.dto.request;

import com.rassini.aprobaciones.entity.enums.TipoSolicitud;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class CrearSolicitudRequest {
    @NotBlank
    private String claveRuta;
    @NotNull
    private TipoSolicitud tipoSolicitud;
    private String descripcion;
    private BigDecimal monto;
    private String referenciaExterna;
}
