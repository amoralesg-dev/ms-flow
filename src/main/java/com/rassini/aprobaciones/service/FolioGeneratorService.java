package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;

public interface FolioGeneratorService {
    String generarFolio(TipoFlujo tipoFlujo);
}
