package com.rassini.aprobaciones.dto.response;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import lombok.Data;

@Data
public class SituacionResponse {
    private Integer codigo;
    private String descripcionCorta;
    private String descripcionLarga;
    private TipoFlujo tipoFlujo;
}
