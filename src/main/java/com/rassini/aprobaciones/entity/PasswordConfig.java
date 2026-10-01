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
@Table(name = "password_config", uniqueConstraints = {
        @UniqueConstraint(name = "uk_password_config", columnNames = {"ruta_id", "situacion_actual_codigo"})
})
public class PasswordConfig extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ruta_id", nullable = false)
    private Ruta ruta;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "situacion_actual_codigo", nullable = false)
    private Situacion situacionActual;

    @Column(name = "password_hash", nullable = false, length = 255)
    private String passwordHash;

    @Column(name = "max_intentos", nullable = false)
    private Integer maxIntentos = 3;

    @Column(name = "activa", nullable = false)
    private Boolean activa = true;
}
