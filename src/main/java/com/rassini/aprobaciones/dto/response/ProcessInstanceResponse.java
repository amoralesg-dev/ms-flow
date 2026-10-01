package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ProcessInstanceResponse {

    private String processInstanceId;
    private String processDefinitionId;
    private String processDefinitionKey;
    private String processDefinitionName;
    private Integer processDefinitionVersion;
    private LocalDateTime inicio;
    private LocalDateTime fin;
    private String estado;
    private String motivo;
    private Long solicitudId;
    private String folio;
    private String claveRuta;
    private String solicitanteUsername;
    private Integer situacionActualCodigo;
    private String situacionActualDescripcion;
    private Boolean solicitudActiva;
}
