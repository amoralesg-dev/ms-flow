INSERT INTO cat_situacion (codigo, descripcion_corta, descripcion_larga, tipo_flujo, activa) VALUES
(20, 'a Registrados', 'REGISTRADOS', 'COMPROBACIONES', TRUE),
(30, 'a Vale Registrado', 'VALES REGISTRADOS', 'COMPROBACIONES', TRUE),
(31, 'a Autorizacin Esp', 'EN AUTORIZACION ESPECIAL', 'COMPROBACIONES', TRUE),
(32, 'a Jefe Inmediato', 'EN AUTORIZACION JEFE INMEDIATO', 'COMPROBACIONES', TRUE),
(33, 'a Contraloria', 'EN AUTORIZACION DE CONTROLORIA', 'COMPROBACIONES', TRUE),
(34, 'a Tesorera', 'EN AUTORIZACION DE TESORERIA', 'COMPROBACIONES', TRUE),
(35, 'a Caja x Pagar', 'VALES POR PAGAR', 'COMPROBACIONES', TRUE),
(36, 'a Caja Pagados', 'VALES PAGADOS', 'COMPROBACIONES', TRUE),
(38, 'a Autorizacin Esp', 'EN AUTORIZACION ESPECIAL', 'COMPROBACIONES', TRUE),
(40, 'a PE2000 Registrados', 'EN PE2000 REGISTRADOS', 'COMPROBACIONES', TRUE),
(41, 'a PE2000 Autorizaci', 'EN PE2000 EN AUTORIZACIONES', 'COMPROBACIONES', TRUE),
(45, 'a Pagados', 'EN PE2000 PAGADOS', 'COMPROBACIONES', TRUE),
(46, 'a Comprobar', '2ANTICIPOS', 'COMPROBACIONES', TRUE),
(47, 'a Aut. Comprobacin', '2ANTICIPOS', 'COMPROBACIONES', TRUE),
(48, 'a Aut. Comprobacin', '2ANTICIPOS', 'COMPROBACIONES', TRUE),
(49, 'a Comprobado', 'ANTICIPOS COMPROBADOS', 'COMPROBACIONES', TRUE),
(50, 'a Registradas Sicoin', 'SOLICITUDES AF REGISTRADAS EN SICOIN', 'COMPROBACIONES', TRUE),
(55, 'a Proceso en PE', 'SOLICITUDES AF PROCESANDOSE EN PE', 'COMPROBACIONES', TRUE),
(60, 'a Registradas', 'SOLICITUDES REGISTRADAS', 'FOLIOS', TRUE),
(61, 'a Jefatura', 'SOLICITUDES EN VO. BO. DE JEFATURA', 'FOLIOS', TRUE),
(62, 'a Aut. Epecial', 'SOLICITUDES EN AUTORIZACION ESPECIAL PRESUPUESTO', 'FOLIOS', TRUE),
(63, 'a Gerencia', 'SOLICITUDES EN VO. BO DE GERENCIA', 'FOLIOS', TRUE),
(64, 'a Contraloria', 'SOLICITUDES EN VO. BO. CONTRALORIA', 'FOLIOS', TRUE),
(65, 'a Provisionadas', 'SOLICITUDES EN PROVISION DE GASTOS', 'FOLIOS', TRUE),
(66, 'a Direccin', 'SOLICITUDES EN AUTORIZACION DE DIRECCION', 'FOLIOS', TRUE),
(67, 'a Tesorera', 'SOLICITUDES AUTORIZADAS EN TESORERIA', 'FOLIOS', TRUE),
(68, 'a Prog. Pago', 'SOLICITUDES EN PROGRAMACION DE PAGO', 'FOLIOS', TRUE),
(69, 'a Procesando', 'SOLICITUDES EN PROCESO DE PAGO', 'FOLIOS', TRUE),
(70, 'a Pagadas', 'SOLICITUDES PAGADAS', 'FOLIOS', TRUE),
(71, 'a Procesando en PN', 'SOLICITUD EN PROCESO DE PAGO EN PIEDRAS NEGRAS', 'FOLIOS', TRUE),
(99, 'a Cancelar', 'SOLICITUDES CANCELADAS', 'FOLIOS', TRUE)
AS nuevo ON DUPLICATE KEY UPDATE descripcion_corta = nuevo.descripcion_corta, descripcion_larga = nuevo.descripcion_larga, tipo_flujo = nuevo.tipo_flujo, activa = nuevo.activa;

INSERT INTO cat_ruta (clave_ruta, descripcion, activa) VALUES
('2328', 'DIR. FINANZAS', TRUE),
('9000', 'PRESIDENCIA EJECUTIVA   SCISNEROS-IOLANO', TRUE),
('9001', 'CONTADOR GRAL. PRES.    SCISNEROS-IOLANO', TRUE),
('9002', 'COMUNICACIN Y RELACIONES PUBLICAS', TRUE),
('9004', 'SEGURIDAD               SCISNEROS-IOLANO', TRUE),
('9005', 'HOLDING                 JSANCHEZ', TRUE),
('9010', 'GASTOS ESPECIALES       SCISNEROS-IOLANO', TRUE),
('901E', 'GASTOS ESPECIALES       SCISNEROS-IOLANO', TRUE),
('9020', 'DIR CORP REC. HUMANOS   EGUILLEN-MPEREZ', TRUE),
('9021', 'DIR CORP REC. HUMANOS   EGUILLEN-MPEREZ', TRUE),
('9025', 'JEFATURA SERV GRALES. MGUTIERREZ-MPEREZ', TRUE),
('9026', 'AREA DE REC. HUM.     MGUTIERREZ-MPEREZ', TRUE),
('902B', 'ADMIN. PERSONAL       MGUTIERREZ-MPEREZ', TRUE),
('902C', 'DIR CORP REC. HUMANOS   EGUILLEN', TRUE),
('902E', 'AREA DE REC. HUM.             MGUTIERREZ', TRUE),
('9030', 'DIR GRAL FIN Y CTRL     JSANCHEZ', TRUE),
('9033', 'DIR GAL FINANZAS', TRUE),
('9035', 'DIR GAL FINANZAS', TRUE),
('9037', 'GERENCIA DE SISTEMAS  JSANCHEZ', TRUE),
('903B', 'GERENCIA DE SISTEMAS  JSANCHEZ', TRUE),
('903E', 'AREA FINANZAS', TRUE),
('9044', 'SUBDIR REL. INVERSIONIS JSANCHEZ', TRUE),
('9052', 'GCIA. CONTRALORIA CORP.  JSANCHEZ', TRUE),
('9056', 'DIR. CORP FP&A, TI   LEDIAZ', TRUE),
('9058', 'GCIA. TESORERIA CORP.  MSANTILLAN-TESO', TRUE),
('905A', 'OPER. ESP. TES S/CONTA', TRUE),
('905B', 'CONTRALORIA VALES', TRUE),
('905D', 'DIR. TESORERIA CORP.', TRUE),
('905E', 'CONTRALORIA EFECTIVO', TRUE),
('905F', 'CONTRALORIA', TRUE),
('9060', 'DIR PLAN. FISCAL        JSANCHEZ', TRUE),
('9062', 'G ANA. ESTRATEGICO', TRUE),
('9063', 'GCIA OPERER.LFISCAL    JMAGALLA-JSANCHEZ', TRUE),
('9066', 'GCIA CONTRAL. DIV SUSP.', TRUE),
('906B', 'G ANA. ESTRATEGICO   JSANCHEZ', TRUE),
('906C', 'GERENCIA FISCAL  JMAGALLANES-JSANCHEZ', TRUE),
('906E', 'G. ANA. ESTRATEGICO EFECTIVO', TRUE),
('9070', 'DIRECCION JURIDICO      JPROSAS', TRUE),
('9072', 'GERENCIA JURIDICO MMORA-JPROSAS', TRUE),
('9074', 'DIR. DE AUDITORIA INTERNA VMSILVA', TRUE),
('9075', 'DIR. DE CTRL Y GESTION   IOLANO', TRUE),
('9077', 'DIR. DIV. SUSPENSIONES', TRUE),
('9078', 'GCIA PLAN ESTRATEGICA  MPEREZ', TRUE),
('9079', 'GCIA TI Y TELECOM      JAPEREZ-MPEREZ', TRUE),
('907B', 'GERENCIA JURIDICA    MMORA - JPROSAS', TRUE),
('9080', 'DIR GRAL DIV AUTOPA   JSANCHEZ', TRUE),
('9086', 'DIR.RES.NORTEAMERICA', TRUE),
('9089', 'VENTAS NACIONALES  JAPEREZ', TRUE),
('908B', 'DIR.RES.NORTEAMERICA  MPEREZ', TRUE),
('908E', 'DIR GRAL DIV AUTOPA  JSANCHEZ', TRUE),
('9100', 'ANT DE SUEL Y AHORROS MGUTIERREZ', TRUE),
('9200', 'ACTIVOS FIJOS CORP. IOLANO', TRUE),
('9300', 'CAJA DE AHORRO', TRUE),
('CONC', 'RUTA CONCUR', TRUE),
('GRAL', 'RUTA GENERAL PARA ADMINISTRADORES', TRUE),
('R031', 'ACTIVOS FIJOS PLANTAS  IOLANO', TRUE),
('R032', 'RUTA PROYECTOS MANUFACTURA', TRUE),
('r032', 'RUTA PROYECTOS MANUFACTURA', TRUE)
AS nuevo ON DUPLICATE KEY UPDATE descripcion = nuevo.descripcion, activa = nuevo.activa;

DELETE FROM ruta_transicion;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '2328'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9000'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9001'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9002'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9004'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9005'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9010'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '901E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9020'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9021'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9025'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9026'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 32, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '902E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9030'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9033'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9035'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9037'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '903E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9044'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 35, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9052'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9056'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9058'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905A'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905D'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 35, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '905F'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 45, 20, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9060'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9062'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9063'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9066'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906C'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '906E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9070'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9072'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9074'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9075'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9077'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9078'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9079'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = '907B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9080'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 35, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9086'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9089'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 35, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908B'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '908E'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9100'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9200'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = '9300'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 99, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 99, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 99, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 99, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'CONC'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'GRAL'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 50, NULL, 55, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 55, 50, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, 50, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 50, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R031'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 20, 99, 32, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 31, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 32, 20, 33, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 33, 20, 34, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 34, 20, 35, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 35, 20, 36, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 36, 20, 41, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 38, 20, 33, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 41, 20, 45, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 50, NULL, 55, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 55, 50, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 60, NULL, 63, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 62, 60, 64, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 63, 60, 64, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 64, 60, 66, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 65, 66, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 66, 60, 67, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 67, 60, 68, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 68, 67, 69, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 69, 68, 70, TRUE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 70, 69, NULL, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 71, 60, 70, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'R032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;

INSERT INTO ruta_transicion (ruta_id, situacion_actual_codigo, situacion_anterior_codigo, situacion_siguiente_codigo, solicitar_password)
SELECT r.id, 99, NULL, 60, FALSE FROM cat_ruta r WHERE r.clave_ruta = 'r032'
ON DUPLICATE KEY UPDATE ruta_transicion.id = ruta_transicion.id;
