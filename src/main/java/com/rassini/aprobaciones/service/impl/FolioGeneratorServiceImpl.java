package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.service.FolioGeneratorService;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class FolioGeneratorServiceImpl implements FolioGeneratorService {

    private final AtomicInteger secuenciaComprobaciones = new AtomicInteger(1);
    private final AtomicInteger secuenciaFolios = new AtomicInteger(1);

    @Override
    public String generarFolio(TipoFlujo tipoFlujo) {
        String prefijo = tipoFlujo == TipoFlujo.COMPROBACIONES ? "CMP" : "FOL";
        int secuencia = tipoFlujo == TipoFlujo.COMPROBACIONES
                ? secuenciaComprobaciones.getAndIncrement()
                : secuenciaFolios.getAndIncrement();

        return prefijo + "-" + LocalDate.now().format(DateTimeFormatter.BASIC_ISO_DATE) + "-" + String.format("%05d", secuencia);
    }
}
