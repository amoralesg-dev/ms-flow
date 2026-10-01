package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.PasswordConfig;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PasswordConfigRepository extends JpaRepository<PasswordConfig, Long> {

    Optional<PasswordConfig> findByRutaClaveRutaAndSituacionActualCodigoAndActivaTrue(String claveRuta, Integer situacionActualCodigo);
}
