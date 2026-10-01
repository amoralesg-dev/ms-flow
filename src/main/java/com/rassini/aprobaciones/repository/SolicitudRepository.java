package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.Solicitud;
import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface SolicitudRepository extends JpaRepository<Solicitud, Long> {

    Optional<Solicitud> findByFolio(String folio);

    Optional<Solicitud> findByProcessInstanceId(String processInstanceId);

    List<Solicitud> findByProcessInstanceIdIn(Collection<String> processInstanceIds);

    @Query("""
            select s from Solicitud s
            where (:tipoFlujo is null or s.tipoFlujo = :tipoFlujo)
              and (:situacionCodigo is null or s.situacionActual.codigo = :situacionCodigo)
            order by s.fechaCreacion desc
            """)
    Page<Solicitud> buscarSolicitudes(TipoFlujo tipoFlujo, Integer situacionCodigo, Pageable pageable);
}
