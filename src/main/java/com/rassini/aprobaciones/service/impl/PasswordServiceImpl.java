package com.rassini.aprobaciones.service.impl;

import com.rassini.aprobaciones.dto.request.PasswordConfigRequest;
import com.rassini.aprobaciones.entity.PasswordConfig;
import com.rassini.aprobaciones.entity.Ruta;
import com.rassini.aprobaciones.entity.Situacion;
import com.rassini.aprobaciones.exception.BusinessException;
import com.rassini.aprobaciones.exception.ResourceNotFoundException;
import com.rassini.aprobaciones.repository.PasswordConfigRepository;
import com.rassini.aprobaciones.repository.RutaRepository;
import com.rassini.aprobaciones.repository.SituacionRepository;
import com.rassini.aprobaciones.service.PasswordService;
import com.rassini.aprobaciones.service.TransicionService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class PasswordServiceImpl implements PasswordService {

    private final PasswordConfigRepository passwordConfigRepository;
    private final RutaRepository rutaRepository;
    private final SituacionRepository situacionRepository;
    private final TransicionService transicionService;
    private final PasswordEncoder passwordEncoder;

    @Override
    public boolean requierePassword(String claveRuta, Integer situacionActualCodigo, Integer situacionSiguienteCodigo) {
        return transicionService.validarYObtenerTransicion(claveRuta, situacionActualCodigo, situacionSiguienteCodigo)
                .getSolicitarPassword();
    }

    @Override
    public boolean validarPassword(String claveRuta, Integer situacionActualCodigo, String passwordPlano) {
        PasswordConfig config = passwordConfigRepository
                .findByRutaClaveRutaAndSituacionActualCodigoAndActivaTrue(claveRuta, situacionActualCodigo)
                .orElseThrow(() -> new BusinessException("No existe configuración de password para la ruta y situación"));

        return passwordEncoder.matches(passwordPlano, config.getPasswordHash());
    }

    @Override
    @Transactional
    public void guardarConfiguracion(PasswordConfigRequest request) {
        Ruta ruta = rutaRepository.findByClaveRutaAndActivaTrue(request.getClaveRuta())
                .orElseThrow(() -> new ResourceNotFoundException("Ruta no encontrada"));
        Situacion situacion = situacionRepository.findById(request.getSituacionActualCodigo())
                .orElseThrow(() -> new ResourceNotFoundException("Situación no encontrada"));

        PasswordConfig config = passwordConfigRepository
                .findByRutaClaveRutaAndSituacionActualCodigoAndActivaTrue(request.getClaveRuta(), request.getSituacionActualCodigo())
                .orElse(PasswordConfig.builder().ruta(ruta).situacionActual(situacion).build());

        config.setPasswordHash(passwordEncoder.encode(request.getPasswordPlano()));
        config.setMaxIntentos(request.getMaxIntentos() == null ? 3 : request.getMaxIntentos());
        config.setActiva(true);

        passwordConfigRepository.save(config);
    }
}
