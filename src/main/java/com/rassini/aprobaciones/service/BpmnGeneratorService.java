package com.rassini.aprobaciones.service;

public interface BpmnGeneratorService {

    String generarYDesplegarProceso(String claveRuta);

    default String processKey(String claveRuta) {
        return "ruta_" + claveRuta.replaceAll("[^a-zA-Z0-9]", "_").toLowerCase();
    }
}
