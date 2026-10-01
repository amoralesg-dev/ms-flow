CREATE TABLE IF NOT EXISTS cat_situacion (
    codigo INTEGER PRIMARY KEY,
    descripcion_corta VARCHAR(150) NOT NULL,
    descripcion_larga VARCHAR(255) NOT NULL,
    tipo_flujo VARCHAR(30) NOT NULL,
    activa BOOLEAN NOT NULL DEFAULT TRUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS cat_ruta (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    clave_ruta VARCHAR(20) NOT NULL UNIQUE,
    descripcion VARCHAR(255) NOT NULL,
    activa BOOLEAN NOT NULL DEFAULT TRUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS ruta_transicion (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ruta_id BIGINT NOT NULL,
    situacion_actual_codigo INTEGER NOT NULL,
    situacion_anterior_codigo INTEGER,
    situacion_siguiente_codigo INTEGER,
    solicitar_password BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT uk_ruta_transicion UNIQUE (ruta_id, situacion_actual_codigo, situacion_siguiente_codigo),
    CONSTRAINT fk_rt_ruta FOREIGN KEY (ruta_id) REFERENCES cat_ruta(id),
    CONSTRAINT fk_rt_sit_actual FOREIGN KEY (situacion_actual_codigo) REFERENCES cat_situacion(codigo),
    CONSTRAINT fk_rt_sit_anterior FOREIGN KEY (situacion_anterior_codigo) REFERENCES cat_situacion(codigo),
    CONSTRAINT fk_rt_sit_siguiente FOREIGN KEY (situacion_siguiente_codigo) REFERENCES cat_situacion(codigo),
    KEY idx_rt_ruta_actual (ruta_id, situacion_actual_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS solicitud (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    folio VARCHAR(30) NOT NULL UNIQUE,
    tipo_solicitud VARCHAR(50) NOT NULL,
    tipo_flujo VARCHAR(20) NOT NULL,
    descripcion VARCHAR(500),
    monto DECIMAL(18,2),
    solicitante_username VARCHAR(120) NOT NULL,
    ruta_id BIGINT NOT NULL,
    situacion_actual_codigo INTEGER NOT NULL,
    process_definition_key VARCHAR(120),
    process_instance_id VARCHAR(120),
    referencia_externa VARCHAR(120),
    activa BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sol_ruta FOREIGN KEY (ruta_id) REFERENCES cat_ruta(id),
    CONSTRAINT fk_sol_sit_actual FOREIGN KEY (situacion_actual_codigo) REFERENCES cat_situacion(codigo),
    KEY idx_solicitud_folio (folio),
    KEY idx_solicitud_situacion (situacion_actual_codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS solicitud_historial (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    solicitud_id BIGINT NOT NULL,
    situacion_anterior_codigo INTEGER,
    situacion_nueva_codigo INTEGER NOT NULL,
    accion VARCHAR(30) NOT NULL,
    comentario VARCHAR(500),
    usuario_username VARCHAR(120),
    fecha_evento TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_hist_solicitud FOREIGN KEY (solicitud_id) REFERENCES solicitud(id),
    CONSTRAINT fk_hist_sit_anterior FOREIGN KEY (situacion_anterior_codigo) REFERENCES cat_situacion(codigo),
    CONSTRAINT fk_hist_sit_nueva FOREIGN KEY (situacion_nueva_codigo) REFERENCES cat_situacion(codigo),
    KEY idx_hist_solicitud (solicitud_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS password_config (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ruta_id BIGINT NOT NULL,
    situacion_actual_codigo INTEGER NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    max_intentos INTEGER NOT NULL DEFAULT 3,
    activa BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uk_password_config UNIQUE (ruta_id, situacion_actual_codigo),
    CONSTRAINT fk_pc_ruta FOREIGN KEY (ruta_id) REFERENCES cat_ruta(id),
    CONSTRAINT fk_pc_sit_actual FOREIGN KEY (situacion_actual_codigo) REFERENCES cat_situacion(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
