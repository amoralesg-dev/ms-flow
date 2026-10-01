package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.entity.RutaTransicion;

import java.util.List;

public interface TransicionService {
    RutaTransicion validarYObtenerTransicion(String claveRuta, Integer situacionActual, Integer situacionDestino);
    List<RutaTransicion> obtenerTransicionesPorRuta(String claveRuta);
}
