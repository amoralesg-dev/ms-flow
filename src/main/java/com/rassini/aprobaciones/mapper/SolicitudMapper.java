package com.rassini.aprobaciones.mapper;

import com.rassini.aprobaciones.dto.response.SolicitudResponse;
import com.rassini.aprobaciones.entity.Solicitud;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface SolicitudMapper {

    @Mapping(target = "solicitante", source = "solicitanteUsername")
    @Mapping(target = "claveRuta", source = "ruta.claveRuta")
    @Mapping(target = "situacionActualCodigo", source = "situacionActual.codigo")
    @Mapping(target = "situacionActualDescripcion", source = "situacionActual.descripcionLarga")
    SolicitudResponse toResponse(Solicitud solicitud);
}
