package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.Ruta;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface RutaRepository extends JpaRepository<Ruta, Long> {

    Optional<Ruta> findByClaveRutaAndActivaTrue(String claveRuta);

    boolean existsByClaveRutaIgnoreCase(String claveRuta);

    List<Ruta> findByActivaTrueOrderByClaveRutaAsc();

    List<Ruta> findByDescripcionContainingIgnoreCaseAndActivaTrue(String descripcion);
}
