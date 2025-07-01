/*
============================================================
 PRUEBAS Y CONSULTAS DE LA BASE DE DATOS
============================================================

Este script contiene ejemplos documentados de consultas SQL,
inserciones de prueba y un trigger, realizados para verificar 
la funcionalidad de la base de datos modelada en el diagrama
entregado al instructor.

Autores del proyecto y documentación:
- Cristian Hernández
- Diego Ruiz
- Valeria Bohorquez
- Venjamín Novoa

Fecha: 30/06/2025
============================================================
*/

-- ==========================================================
-- 1. CONSULTA BÁSICA: LISTAR TODOS LOS USUARIOS
-- ==========================================================
SELECT * FROM usuarios;

-- ==========================================================
-- 2. CONSULTA CON WHERE: DOCUMENTOS EN ESTADO 'Pendiente'
-- ==========================================================
SELECT d.*
FROM documentos d
JOIN estados_documentos e ON d.estado_id = e.id_estado_documento
WHERE e.nombre_estado = 'Pendiente';

-- ==========================================================
-- 3. CONSULTA CON JOIN: DOCUMENTOS + USUARIOS + TIPOS
-- ==========================================================
SELECT 
  d.id_documento,
  d.nombre_documento,
  u.nombre_usuario,
  t.nombre_tipo_documento
FROM documentos d
JOIN usuarios u ON d.usuario_id = u.id_usuario
JOIN tipos_documentos t ON d.tipo_documento_id = t.id_tipo_documento;

-- ==========================================================
-- 4. CONSULTA CON MÚLTIPLES JOIN Y WHERE
-- ==========================================================
SELECT 
  d.id_documento,
  d.nombre_documento,
  e.nombre_estado,
  c.nombre_categoria_documento
FROM documentos d
JOIN estados_documentos e ON d.estado_id = e.id_estado_documento
JOIN categorias_documentos c ON d.categoria_id = c.id_categoria_documento
WHERE e.nombre_estado = 'Aprobado' AND c.nombre_categoria_documento = 'Contratos';

-- ==========================================================
-- 5. CONSULTA CON FUNCIONES DE AGREGACIÓN: CONTAR DOCUMENTOS POR ESTADO
-- ==========================================================
SELECT 
  e.nombre_estado,
  COUNT(d.id_documento) AS cantidad_documentos
FROM estados_documentos e
LEFT JOIN documentos d ON d.estado_id = e.id_estado_documento
GROUP BY e.nombre_estado;

-- ==========================================================
-- 6. CONSULTA PARA OBTENER EL ÚLTIMO DOCUMENTO INSERTADO
-- ==========================================================
SELECT 
  d.*
FROM documentos d
ORDER BY d.creado_en DESC
LIMIT 1;

-- ==========================================================
-- 7. CONSULTA PARA LISTAR DOCUMENTOS CON FECHA DE CREACIÓN EN EL ÚLTIMO MES
-- ==========================================================
SELECT 
  d.*
FROM documentos d
WHERE d.creado_en >= DATE_SUB(NOW(), INTERVAL 1 MONTH);

-- ==========================================================
-- 8. CONSULTA PARA OBTENER USUARIOS QUE NO HAN CREADO DOCUMENTOS
-- ==========================================================
SELECT 
  u.id_usuario,
  u.nombre_usuario
FROM usuarios u
LEFT JOIN documentos d ON u.id_usuario = d.usuario_id
WHERE d.id_documento IS NULL;

-- ==========================================================
-- 9. CONSULTA PARA OBTENER EL NÚMERO DE DOCUMENTOS POR USUARIO
-- ==========================================================
SELECT 
  u.nombre_usuario,
  COUNT(d.id_documento) AS total_documentos
FROM usuarios u
LEFT JOIN documentos d ON u.id_usuario = d.usuario_id
GROUP BY u.id_usuario
ORDER BY total_documentos DESC;

-- ==========================================================
-- 10. CONSULTA PARA LISTAR LOS 5 DOCUMENTOS MÁS ANTIGUOS
-- ==========================================================
SELECT 
  d.*
FROM documentos d
ORDER BY d.creado_en ASC
LIMIT 5;

-- ==========================================================
-- 11. PRUEBA DE INSERCIONES: CREAR DATOS DE PRUEBA
-- ==========================================================
-- Insertar un usuario de prueba
INSERT INTO usuarios (nombre_usuario, correo, creado_en)
VALUES ('Carlos Pérez', 'carlos.perez@example.com', NOW());

-- Insertar un tipo de documento de prueba
INSERT INTO tipos_documentos (nombre_tipo_documento, descripcion)
VALUES ('Informe Técnico', 'Documentos con análisis técnico detallado.');

-- Insertar un documento de prueba (ajusta los IDs según existan en tu BD)
INSERT INTO documentos (nombre_documento, usuario_id, tipo_documento_id, estado_id, creado_en)
VALUES ('Informe de Mantenimiento', 1, 1, 1, NOW());

-- ==========================================================
-- 12. PRUEBA DE ACTUALIZACIÓN: CAMBIAR ESTADO DE DOCUMENTO
-- ==========================================================
UPDATE documentos
SET estado_id = 2
WHERE id_documento = 1;

-- ==========================================================
-- 13. PRUEBA DE ELIMINACIÓN: BORRAR DOCUMENTO
-- ==========================================================
DELETE FROM documentos
WHERE id_documento = 1;

-- ==========================================================
-- 14. TRIGGER: AUDITAR INSERCIONES EN DOCUMENTOS
-- ==========================================================
-- Crear tabla de auditoría si no existe
CREATE TABLE IF NOT EXISTS auditoria_documentos (
  id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
  id_documento INT,
  accion VARCHAR(20),
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear trigger para registrar inserciones en la tabla documentos
DELIMITER //
CREATE TRIGGER trg_auditar_insert_documento
AFTER INSERT ON documentos
FOR EACH ROW
BEGIN
  INSERT INTO auditoria_documentos (id_documento, accion)
  VALUES (NEW.id_documento, 'INSERT');
END;
//
DELIMITER ;


-- FIN DEL SCRIPT DE PRUEBAS

