package com.rassini.aprobaciones.dto.response;

import lombok.Data;

import java.util.List;

@Data
public class RutaAdminResponse {

    private Long id;
    private String claveRuta;
    private String descripcion;
    private Boolean activa;
    private BpmProcesoRutaResponse procesoBpm;
    private List<RutaTransicionResponse> transiciones;
}
