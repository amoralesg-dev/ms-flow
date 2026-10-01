package com.rassini.aprobaciones.dto.response;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.entity.enums.TipoSolicitud;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
public class SolicitudResponse {
    private Long id;
    private String folio;
    private TipoSolicitud tipoSolicitud;
    private TipoFlujo tipoFlujo;
    private String descripcion;
    private BigDecimal monto;
    private String solicitante;
    private String claveRuta;
    private Integer situacionActualCodigo;
    private String situacionActualDescripcion;
    private String processInstanceId;
    private LocalDateTime fechaCreacion;
}
