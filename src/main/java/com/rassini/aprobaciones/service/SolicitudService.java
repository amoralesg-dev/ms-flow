package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.dto.request.CrearSolicitudRequest;
import com.rassini.aprobaciones.dto.request.TransicionRequest;
import com.rassini.aprobaciones.dto.response.PageResponse;
import com.rassini.aprobaciones.dto.response.SolicitudHistorialResponse;
import com.rassini.aprobaciones.dto.response.SolicitudResponse;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;

import java.util.List;

public interface SolicitudService {
    SolicitudResponse crear(CrearSolicitudRequest request, String username);
    SolicitudResponse obtener(Long id);
    PageResponse<SolicitudResponse> listar(TipoFlujo tipoFlujo, Integer situacionCodigo, int page, int size);
    SolicitudResponse transicionar(Long solicitudId, TransicionRequest request, String username);
    List<SolicitudHistorialResponse> historial(Long solicitudId);
}
