package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.dto.request.PasswordConfigRequest;

public interface PasswordService {
    boolean requierePassword(String claveRuta, Integer situacionActualCodigo, Integer situacionSiguienteCodigo);
    boolean validarPassword(String claveRuta, Integer situacionActualCodigo, String passwordPlano);
    void guardarConfiguracion(PasswordConfigRequest request);
}
