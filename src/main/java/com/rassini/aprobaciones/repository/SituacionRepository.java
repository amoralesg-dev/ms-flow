package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.Situacion;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SituacionRepository extends JpaRepository<Situacion, Integer> {

    List<Situacion> findByTipoFlujoAndActivaTrueOrderByCodigoAsc(TipoFlujo tipoFlujo);
}
