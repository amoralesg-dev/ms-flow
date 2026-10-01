package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class TareaProcesoResponse {

    private String id;
    private String name;
    private String taskDefinitionKey;
    private String assignee;
    private LocalDateTime fechaCreacion;
}
