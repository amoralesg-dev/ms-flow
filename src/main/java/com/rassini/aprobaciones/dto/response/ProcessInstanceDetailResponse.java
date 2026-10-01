package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class ProcessInstanceDetailResponse {

    private String processInstanceId;
    private String processDefinitionId;
    private String processDefinitionKey;
    private String processDefinitionName;
    private Integer processDefinitionVersion;
    private LocalDateTime inicio;
    private LocalDateTime fin;
    private Long duracionMs;
    private String estado;
    private String motivo;
    private List<TareaProcesoResponse> tareasActivas;
    private SolicitudResponse solicitud;
    private List<SolicitudHistorialResponse> historial;
}
