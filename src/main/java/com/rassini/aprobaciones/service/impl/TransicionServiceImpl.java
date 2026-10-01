package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.entity.RutaTransicion;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.repository.RutaTransicionRepository;
import com.rassini.aprobaciones.service.TransicionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TransicionServiceImpl implements TransicionService {

    private final RutaTransicionRepository rutaTransicionRepository;

    @Override
    public RutaTransicion validarYObtenerTransicion(String claveRuta, Integer situacionActual, Integer situacionDestino) {
        return rutaTransicionRepository.findTransicion(claveRuta, situacionActual, situacionDestino)
                .orElseThrow(() -> new BusinessException("Transición inválida para la ruta y situación actual"));
    }

    @Override
    public List<RutaTransicion> obtenerTransicionesPorRuta(String claveRuta) {
        return rutaTransicionRepository.findByRutaClaveRutaOrderBySituacionActualCodigoAsc(claveRuta);
    }
}
