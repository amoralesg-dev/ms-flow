package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class BpmProcesoRutaResponse {

    private boolean desplegado;
    private String processDefinitionId;
    private String processDefinitionKey;
    private Integer version;
    private boolean suspendida;
    private LocalDateTime fechaDespliegue;
}
