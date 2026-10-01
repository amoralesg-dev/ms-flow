package com.rassini.aprobaciones.entity;

import com.rassini.aprobaciones.entity.enums.TipoFlujo;
import com.rassini.aprobaciones.entity.enums.TipoSolicitud;
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

import java.math.BigDecimal;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "solicitud")
public class Solicitud extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "folio", nullable = false, unique = true, length = 30)
    private String folio;

    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_solicitud", nullable = false, length = 50)
    private TipoSolicitud tipoSolicitud;

    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_flujo", nullable = false, length = 20)
    private TipoFlujo tipoFlujo;

    @Column(name = "descripcion", length = 500)
    private String descripcion;

    @Column(name = "monto", precision = 18, scale = 2)
    private BigDecimal monto;

    @Column(name = "solicitante_username", nullable = false, length = 120)
    private String solicitanteUsername;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ruta_id", nullable = false)
    private Ruta ruta;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "situacion_actual_codigo", nullable = false)
    private Situacion situacionActual;

    @Column(name = "process_definition_key", length = 120)
    private String processDefinitionKey;

    @Column(name = "process_instance_id", length = 120)
    private String processInstanceId;

    @Column(name = "referencia_externa", length = 120)
    private String referenciaExterna;

    @Column(name = "activa", nullable = false)
    private Boolean activa = true;
}
