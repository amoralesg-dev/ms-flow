package com.rassini.aprobaciones.mapper;

import com.rassini.aprobaciones.dto.response.RutaTransicionResponse;
import com.rassini.aprobaciones.entity.RutaTransicion;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface RutaTransicionMapper {

    @Mapping(target = "claveRuta", source = "ruta.claveRuta")
    @Mapping(target = "situacionActual", source = "situacionActual.codigo")
    @Mapping(target = "situacionAnterior", source = "situacionAnterior.codigo")
    @Mapping(target = "situacionSiguiente", source = "situacionSiguiente.codigo")
    RutaTransicionResponse toResponse(RutaTransicion transicion);

    List<RutaTransicionResponse> toResponseList(List<RutaTransicion> transiciones);
}
