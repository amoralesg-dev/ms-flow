package com.rassini.aprobaciones.service;

import com.rassini.aprobaciones.dto.request.ActualizarRutaRequest;
import com.rassini.aprobaciones.dto.request.CrearRutaRequest;
import com.rassini.aprobaciones.dto.response.RutaAdminResponse;

import java.util.List;

public interface RutaAdminService {

    List<RutaAdminResponse> listar(String filtro, Boolean activa);

    RutaAdminResponse obtener(Long id);

    RutaAdminResponse crear(CrearRutaRequest request);

    RutaAdminResponse actualizar(Long id, ActualizarRutaRequest request);

    RutaAdminResponse desplegarBpmn(Long id);
}
