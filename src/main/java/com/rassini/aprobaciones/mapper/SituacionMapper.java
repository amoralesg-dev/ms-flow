package com.rassini.aprobaciones.mapper;

import com.rassini.aprobaciones.dto.response.SituacionResponse;
import com.rassini.aprobaciones.entity.Situacion;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface SituacionMapper {
    SituacionResponse toResponse(Situacion situacion);
    List<SituacionResponse> toResponseList(List<Situacion> situaciones);
}
