package com.rassini.aprobaciones.dto.request;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.List;

@Data
public class CrearRutaRequest {

    @NotBlank(message = "claveRuta es requerida")
    @Size(max = 20, message = "claveRuta no debe exceder 20 caracteres")
    private String claveRuta;

    @NotBlank(message = "descripcion es requerida")
    @Size(max = 255, message = "descripcion no debe exceder 255 caracteres")
    private String descripcion;

    private Boolean activa = true;

    @Valid
    private List<RutaTransicionRequest> transiciones;
}
