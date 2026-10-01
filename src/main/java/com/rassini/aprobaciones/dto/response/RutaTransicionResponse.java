package com.rassini.aprobaciones.dto.response;

import lombok.Data;

@Data
public class RutaTransicionResponse {
    private Long id;
    private String claveRuta;
    private Integer situacionActual;
    private Integer situacionAnterior;
    private Integer situacionSiguiente;
    private Boolean solicitarPassword;
}
