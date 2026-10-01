package com.rassini.aprobaciones.entity;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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
@Table(name = "cat_situacion")
public class Situacion {

    @Id
    @Column(name = "codigo")
    private Integer codigo;

    @Column(name = "descripcion_corta", nullable = false, length = 150)
    private String descripcionCorta;

    @Column(name = "descripcion_larga", nullable = false, length = 255)
    private String descripcionLarga;

    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_flujo", nullable = false, length = 30)
    private TipoFlujo tipoFlujo;

    @Column(name = "activa", nullable = false)
    private Boolean activa = true;
}
