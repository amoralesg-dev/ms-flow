package com.rassini.aprobaciones.entity;

import com.rassini.aprobaciones.entity.enums.AccionRealizada;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "solicitud_historial")
public class SolicitudHistorial {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "solicitud_id", nullable = false)
    private Solicitud solicitud;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "situacion_anterior_codigo")
    private Situacion situacionAnterior;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "situacion_nueva_codigo", nullable = false)
    private Situacion situacionNueva;

    @Enumerated(EnumType.STRING)
    @Column(name = "accion", nullable = false, length = 30)
    private AccionRealizada accion;

    @Column(name = "comentario", length = 500)
    private String comentario;

    @Column(name = "usuario_username", length = 120)
    private String usuarioUsername;

    @Column(name = "fecha_evento", nullable = false)
    private LocalDateTime fechaEvento;
}
