package com.rassini.aprobaciones.repository;

import com.rassini.aprobaciones.entity.RutaTransicion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface RutaTransicionRepository extends JpaRepository<RutaTransicion, Long> {

    @Query("""
            select rt from RutaTransicion rt
            join fetch rt.ruta
            join fetch rt.situacionActual
            left join fetch rt.situacionAnterior
            left join fetch rt.situacionSiguiente
            where rt.ruta.claveRuta = :claveRuta
              and rt.situacionActual.codigo = :situacionActual
            order by rt.situacionSiguiente.codigo asc
            """)
    List<RutaTransicion> findTransicionesByRutaAndSituacionActual(String claveRuta, Integer situacionActual);

    @Query("""
            select rt from RutaTransicion rt
            where rt.ruta.claveRuta = :claveRuta
              and rt.situacionActual.codigo = :situacionActual
              and rt.situacionSiguiente.codigo = :situacionSiguiente
            """)
    Optional<RutaTransicion> findTransicion(String claveRuta, Integer situacionActual, Integer situacionSiguiente);

    List<RutaTransicion> findByRutaClaveRutaOrderBySituacionActualCodigoAsc(String claveRuta);

    @Query("""
            select rt from RutaTransicion rt
            join fetch rt.ruta
            join fetch rt.situacionActual
            left join fetch rt.situacionAnterior
            left join fetch rt.situacionSiguiente
            where rt.ruta.claveRuta = :claveRuta
            order by rt.situacionActual.codigo asc, rt.situacionSiguiente.codigo asc
            """)
    List<RutaTransicion> findDetallePorRuta(String claveRuta);
}
