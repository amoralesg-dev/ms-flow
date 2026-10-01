package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ProcessDefinitionResponse {

    private String id;
    private String processDefinitionKey;
    private String name;
    private String claveRuta;
    private int version;
    private String deploymentId;
    private String resourceName;
    private boolean suspendida;
    private boolean esUltimaVersion;
    private LocalDateTime fechaDespliegue;
}
