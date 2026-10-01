package com.rassini.aprobaciones.mapper;

import com.rassini.aprobaciones.dto.response.RutaResponse;
import com.rassini.aprobaciones.entity.Ruta;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface RutaMapper {
    RutaResponse toResponse(Ruta ruta);
    List<RutaResponse> toResponseList(List<Ruta> rutas);
}
