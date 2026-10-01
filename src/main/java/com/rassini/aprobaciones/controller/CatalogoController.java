package com.rassini.aprobaciones.controller;

import com.rassini.aprobaciones.dto.response.RutaResponse;
import com.rassini.aprobaciones.dto.response.RutaTransicionResponse;
import com.rassini.aprobaciones.dto.response.SituacionResponse;
import com.rassini.aprobaciones.entity.RutaTransicion;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.mapper.RutaMapper;
import com.rassini.aprobaciones.mapper.RutaTransicionMapper;
import com.rassini.aprobaciones.mapper.SituacionMapper;
import com.rassini.aprobaciones.repository.RutaRepository;
import com.rassini.aprobaciones.repository.RutaTransicionRepository;
import com.rassini.aprobaciones.repository.SituacionRepository;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/catalogos")
@RequiredArgsConstructor
public class CatalogoController {

    private final SituacionRepository situacionRepository;
    private final RutaRepository rutaRepository;
    private final RutaTransicionRepository rutaTransicionRepository;
    private final SituacionMapper situacionMapper;
    private final RutaMapper rutaMapper;
    private final RutaTransicionMapper rutaTransicionMapper;

    @Operation(summary = "Listar situaciones por tipo de flujo")
    @GetMapping("/situaciones")
    public List<SituacionResponse> listarSituaciones(@RequestParam TipoFlujo tipoFlujo) {
        return situacionMapper.toResponseList(situacionRepository.findByTipoFlujoAndActivaTrueOrderByCodigoAsc(tipoFlujo));
    }

    @Operation(summary = "Listar rutas activas")
    @GetMapping("/rutas")
    public List<RutaResponse> listarRutas(@RequestParam(required = false) String filtro) {
        if (filtro != null && !filtro.isBlank()) {
            return rutaMapper.toResponseList(rutaRepository.findByDescripcionContainingIgnoreCaseAndActivaTrue(filtro));
        }
        return rutaMapper.toResponseList(rutaRepository.findByActivaTrueOrderByClaveRutaAsc());
    }

    @Operation(summary = "Listar transiciones de una ruta, opcionalmente filtradas por situación actual")
    @GetMapping("/rutas/{claveRuta}/transiciones")
    public List<RutaTransicionResponse> listarTransicionesDeRuta(@PathVariable String claveRuta,
                                                                 @RequestParam(required = false) Integer situacionActual) {
        List<RutaTransicion> transiciones = situacionActual == null
                ? rutaTransicionRepository.findDetallePorRuta(claveRuta)
                : rutaTransicionRepository.findTransicionesByRutaAndSituacionActual(claveRuta, situacionActual);
        return rutaTransicionMapper.toResponseList(transiciones);
    }
}
