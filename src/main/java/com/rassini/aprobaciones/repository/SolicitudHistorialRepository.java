package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.SolicitudHistorial;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SolicitudHistorialRepository extends JpaRepository<SolicitudHistorial, Long> {

    List<SolicitudHistorial> findBySolicitudIdOrderByFechaEventoAsc(Long solicitudId);
}
