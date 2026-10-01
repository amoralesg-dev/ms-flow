package com.rassini.aprobaciones.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ruta_transicion", uniqueConstraints = {
        @UniqueConstraint(name = "uk_ruta_transicion", columnNames = {"ruta_id", "situacion_actual_codigo", "situacion_siguiente_codigo"})
})
public class RutaTransicion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ruta_id", nullable = false)
    private Ruta ruta;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "situacion_actual_codigo", nullable = false)
    private Situacion situacionActual;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "situacion_anterior_codigo")
    private Situacion situacionAnterior;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "situacion_siguiente_codigo")
    private Situacion situacionSiguiente;

    @Column(name = "solicitar_password", nullable = false)
    private Boolean solicitarPassword = false;
}
