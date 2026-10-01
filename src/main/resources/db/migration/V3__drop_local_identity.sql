-- Migra identidad local a esquema desacoplado del IAM externo (versión MySQL)
-- Preserva datos de negocio y elimina tablas/columnas de autenticación local si existen.

DROP PROCEDURE IF EXISTS migrar_solicitud_solicitante;

DELIMITER $$
CREATE PROCEDURE migrar_solicitud_solicitante()
BEGIN
    -- solicitud.solicitante_id -> solicitud.solicitante_username
    IF EXISTS (
        SELECT 1 FROM information_schema.columns
        WHERE table_schema = DATABASE() AND table_name = 'solicitud' AND column_name = 'solicitante_id'
    ) THEN
        IF NOT EXISTS (
            SELECT 1 FROM information_schema.columns
            WHERE table_schema = DATABASE() AND table_name = 'solicitud' AND column_name = 'solicitante_username'
        ) THEN
            ALTER TABLE solicitud ADD COLUMN solicitante_username VARCHAR(120) NULL;
        END IF;

        IF EXISTS (
            SELECT 1 FROM information_schema.tables
            WHERE table_schema = DATABASE() AND table_name = 'usuario'
        ) THEN
            UPDATE solicitud s
            LEFT JOIN usuario u ON s.solicitante_id = u.id
            SET s.solicitante_username = u.username
            WHERE s.solicitante_username IS NULL OR s.solicitante_username = '';
        END IF;

        UPDATE solicitud
        SET solicitante_username = COALESCE(solicitante_username, 'usuario_desconocido')
        WHERE solicitante_username IS NULL;

        SET @fk_name := NULL;
        SELECT constraint_name INTO @fk_name
        FROM information_schema.key_column_usage
        WHERE table_schema = DATABASE()
          AND table_name = 'solicitud'
          AND column_name = 'solicitante_id'
          AND referenced_table_name IS NOT NULL
        LIMIT 1;
        IF @fk_name IS NOT NULL THEN
            SET @ddl := CONCAT('ALTER TABLE solicitud DROP FOREIGN KEY `', @fk_name, '`');
            PREPARE stmt FROM @ddl;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
        END IF;

        ALTER TABLE solicitud MODIFY COLUMN solicitante_username VARCHAR(120) NOT NULL;
        ALTER TABLE solicitud DROP COLUMN solicitante_id;
    END IF;
END$$
DELIMITER ;

CALL migrar_solicitud_solicitante();
DROP PROCEDURE migrar_solicitud_solicitante;

DROP PROCEDURE IF EXISTS migrar_historial_usuario;

DELIMITER $$
CREATE PROCEDURE migrar_historial_usuario()
BEGIN
    -- solicitud_historial.usuario_id -> solicitud_historial.usuario_username
    IF EXISTS (
        SELECT 1 FROM information_schema.columns
        WHERE table_schema = DATABASE() AND table_name = 'solicitud_historial' AND column_name = 'usuario_id'
    ) THEN
        IF NOT EXISTS (
            SELECT 1 FROM information_schema.columns
            WHERE table_schema = DATABASE() AND table_name = 'solicitud_historial' AND column_name = 'usuario_username'
        ) THEN
            ALTER TABLE solicitud_historial ADD COLUMN usuario_username VARCHAR(120) NULL;
        END IF;

        IF EXISTS (
            SELECT 1 FROM information_schema.tables
            WHERE table_schema = DATABASE() AND table_name = 'usuario'
        ) THEN
            UPDATE solicitud_historial sh
            LEFT JOIN usuario u ON sh.usuario_id = u.id
            SET sh.usuario_username = u.username
            WHERE sh.usuario_username IS NULL OR sh.usuario_username = '';
        END IF;

        SET @fk_name := NULL;
        SELECT constraint_name INTO @fk_name
        FROM information_schema.key_column_usage
        WHERE table_schema = DATABASE()
          AND table_name = 'solicitud_historial'
          AND column_name = 'usuario_id'
          AND referenced_table_name IS NOT NULL
        LIMIT 1;
        IF @fk_name IS NOT NULL THEN
            SET @ddl := CONCAT('ALTER TABLE solicitud_historial DROP FOREIGN KEY `', @fk_name, '`');
            PREPARE stmt FROM @ddl;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
        END IF;

        ALTER TABLE solicitud_historial DROP COLUMN usuario_id;
    END IF;
END$$
DELIMITER ;

CALL migrar_historial_usuario();
DROP PROCEDURE migrar_historial_usuario;

DROP TABLE IF EXISTS usuario_rol;
DROP TABLE IF EXISTS rol;
DROP TABLE IF EXISTS usuario;
