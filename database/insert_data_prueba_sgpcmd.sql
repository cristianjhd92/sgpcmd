INSERT INTO roles_obra (
    nombre_rol_obra, descripcion_rol_obra, firma_requerida_rol_obra,
    recibe_alertas_rol_obra, rol_obra_activo, created_at, updated_at
) VALUES
('Residente de obra', 'Responsable técnico y operativo de la ejecución de la obra', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Interventor técnico', 'Audita técnicamente los avances y calidad de la obra', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Coordinador SST', 'Supervisa condiciones de seguridad y salud en obra', false, true, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Auxiliar administrativo', 'Apoya la gestión documental y administrativa', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Coordinador de calidad', 'Asegura cumplimiento normativo y técnico', false, true, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Ingeniero estructural', 'Diseña y supervisa estructuras civiles', true, true, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Topógrafo', 'Realiza mediciones georreferenciadas de terreno', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Almacenista', 'Gestiona insumos y control de inventarios', true, true, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Maestro de obra', 'Coordina cuadrillas y ejecución en campo', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Contratista principal', 'Empresa o responsable directo de ejecución', true, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Técnico eléctrico', 'Ejecuta y supervisa instalaciones eléctricas', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Ayudante general', 'Apoya tareas varias en obra', false, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Encargado ambiental', 'Supervisa impacto ambiental y mitigación', true, false, true, '2025-06-24 12:20:46', '2025-06-24 12:20:46'),
('Capataz de cuadrilla', 'Líder operativo de una cuadrilla de trabajadores en frente específico', false, true, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Inspector de obra', 'Evalúa ejecución, cumplimiento técnico y normativo en campo', true, true, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO estado_obra (
    nombre_estado_obra, descripcion_estado_obra, es_final_estado_obra,
    estado_obra_activa, created_at, updated_at
) VALUES
('Planeación', 'La obra está en fase de estudios y preparativos', false, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Ejecución', 'La obra se encuentra activa y en proceso de construcción', false, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Suspendida', 'La obra fue pausada temporalmente por causas técnicas o administrativas', false, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Finalizada', 'La obra ha terminado su fase constructiva principal', true, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cerrada', 'La obra fue cerrada administrativa y técnicamente', true, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cancelada', 'La obra fue suspendida y no continuará', true, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO tipos_obra (
    nombre_tipo_obra, descripcion_tipo_obra, tipo_obra_activa, created_at, updated_at
) VALUES
('Vial', 'Obras de infraestructura vial como carreteras, puentes, intersecciones', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Hidrosanitaria', 'Obras relacionadas con redes de acueducto, alcantarillado, saneamiento', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Edificaciones', 'Construcción de edificios habitacionales, comerciales o institucionales', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Eléctrica', 'Instalaciones eléctricas, subestaciones, alumbrado público', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Urbanismo', 'Obras de espacio público, paisajismo, andenes, ciclorrutas', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Estructural', 'Refuerzos estructurales, cimentaciones especiales', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Industrial', 'Montaje de plantas, bodegas, obras de ingeniería pesada', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Ambiental', 'Obras de mitigación ambiental, manejo de residuos, control erosión', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Geotécnica', 'Estabilización de taludes, pilotes, muros de contención', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Telecomunicaciones', 'Infraestructura para redes, fibra óptica, torres', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO tipos_documento_identidad (
    codigo_documento_identidad, descripcion_documento_identidad, created_at, updated_at
) VALUES
('CC', 'Cédula de Ciudadanía', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CE', 'Cédula de Extranjería', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('TI', 'Tarjeta de Identidad', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('NIT', 'Número de Identificación Tributaria', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PAS', 'Pasaporte', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PEP', 'Permiso Especial de Permanencia', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PPT', 'Permiso por Protección Temporal', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO roles (
    nombre_rol, codigo_rol, descripcion_rol, jerarquia_rol, rol_activo,
    id_usuario_creador_rol, created_at, updated_at
) VALUES
('Administrador TIC', 'ADMIN_TIC', 'Acceso total. Gestiona usuarios, permisos, logs y configuración del sistema.', 0, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Gerente General', 'GER_GEN', 'Visión global del sistema. Aprueba informes estratégicos y KPIs.', 1, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Gerente de Proyecto', 'GER_PROY', 'Supervisa múltiples obras, valida hitos y recursos.', 2, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Coordinador SST', 'COOR_SST', 'Gestiona el módulo SST, validaciones, permisos y reportes.', 3, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Coordinador de Calidad', 'COOR_CAL', 'Gestión de calidad, fichas, actas, reportes y control documental.', 3, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Interventor', 'INTERV', 'Valida documentos técnicos, reportes, cronogramas y hallazgos.', 4, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Residente de Obra', 'RES_OBRA', 'Carga reportes diarios, evidencia, cronograma, validación técnica.', 5, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Asistente Administrativo', 'ASIS_ADM', 'Apoyo documental, generación de oficios, subida de plantillas.', 6, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Auditor Interno', 'AUD_INT', 'Revisión independiente, lectura y observación de evidencias.', 4, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Supervisor de Frente', 'SUP_FRNT', 'Gestión operativa por frentes, personal, maquinaria.', 5, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Documentador', 'DOCUM', 'Carga inicial, digitalización, asociación de metadatos.', 6, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Ingeniero de Planeación', 'ING_PLAN', 'Responsable del cronograma, avance físico y metas.', 3, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Soporte Técnico', 'SOP_TEC', 'Apoyo técnico a usuarios, manejo de tickets y logs.', 6, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Consultor Externo', 'CONS_EXT', 'Acceso restringido por proyecto, lectura de KPIs.', 7, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cliente', 'CLIENTE', 'Consulta de documentos autorizados, indicadores y entregables.', 8, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO acciones_sistema (
    codigo_accion_sistema, nombre_accion_sistema, descripcion_accion_sistema, modulo_asociado_accion_sistema,
    created_at, updated_at
) VALUES
('CREAR_USUARIO', 'Crear usuario', 'Crear nuevo usuario en el sistema', 'Usuarios', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('EDITAR_USUARIO', 'Editar usuario', 'Editar información de un usuario', 'Usuarios', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('ELIMINAR_USUARIO', 'Eliminar usuario', 'Eliminar o inactivar usuario del sistema', 'Usuarios', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('ASIGNAR_ROL', 'Asignar rol', 'Asignar o modificar el rol de un usuario', 'Usuarios', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CAMBIAR_ESTADO_USUARIO', 'Cambiar estado de usuario', 'Activar, suspender o bloquear un usuario', 'Usuarios', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CREAR_DOCUMENTO', 'Crear documento', 'Registrar documento en el sistema', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('EDITAR_DOCUMENTO', 'Editar documento', 'Modificar metadatos o contenido del documento', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('VALIDAR_DOCUMENTO', 'Validar documento', 'Revisar y aprobar un documento cargado', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('RECHAZAR_DOCUMENTO', 'Rechazar documento', 'Rechazar documento con observaciones', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('FIRMAR_DOCUMENTO', 'Firmar documento', 'Firmar electrónicamente un documento', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('ASIGNAR_DOCUMENTO', 'Asignar documento', 'Delegar documento a otro usuario o rol', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('EXPORTAR_DOCUMENTO', 'Exportar documento', 'Descargar o exportar en PDF/Excel', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CREAR_OBRA', 'Crear obra', 'Registrar una nueva obra en el sistema', 'Obras', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('EDITAR_OBRA', 'Editar obra', 'Modificar datos generales de una obra', 'Obras', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CERRAR_OBRA', 'Cerrar obra', 'Cerrar técnica y administrativamente una obra', 'Obras', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('CREAR_CRONOGRAMA', 'Crear cronograma', 'Crear programación inicial de actividades', 'Cronograma', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('REPROGRAMAR_ACTIVIDAD', 'Reprogramar actividad', 'Modificar actividad programada', 'Cronograma', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('SUBIR_EVIDENCIA', 'Subir evidencia', 'Adjuntar archivo o imagen a un reporte o documento', 'Documentos', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO estado_usuario (
    nombre_estado_usuario, codigo_estado_usuario, descripcion_estado_usuario,
    es_acceso_habil_estado_usuario, id_usuario_creador_estado_usuario,
    created_at, updated_at
) VALUES
('Activo', 'ACT', 'Usuario habilitado con acceso pleno al sistema', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Inactivo', 'INA', 'Usuario temporalmente sin acceso, pero registrado', false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Suspendido', 'SUS', 'Usuario deshabilitado por política o seguridad', false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Pendiente', 'PEN', 'Usuario creado pero aún no activado o validado', false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Eliminado', 'DEL', 'Usuario removido lógicamente del sistema', false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Bloqueado', 'BLO', 'Usuario bloqueado por intentos fallidos u otras razones', false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO usuarios (
    nombre_usuario, apellido_usuario, id_tipo_documento_identidad_usuario,
    numero_documento_usuario, tipo_usuario, correo_usuario,
    dominio_validado_usuario, telefono_usuario, id_rol_usuario,
    id_estado_usuario, id_usuario_creador, contrasena_hash_usuario, 
    ultima_conexion_usuario, direccion_ip_reg_usuario, requiere_cambio_pi_usuario, 
    intentos_fallidos_usuario, usuario_bloqueado, id_usuario_generador_bloqueo, 
    motivo_bloqueo_usuario, created_at, updated_at
) VALUES
('Ana', 'Vargas', 4, '976638413-4', 'interno', 'ana_vargas@construserviciosmd.com', false, '3043513396', 1, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.10', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Julián', 'Moreno', 6, 'PEP69741781', 'interno', 'julián_moreno@construserviciosmd.com', false, '3264244558', 2, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.11', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Laura', 'Gutiérrez', 5, 'P3896834', 'interno', 'laura_gutiérrez@construserviciosmd.com', false, '3039781441', 3, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.12', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Luis', 'Martínez', 7, 'PPT8431183', 'interno', 'luis_martínez@construserviciosmd.com', false, '3214553639', 4, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.13', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Paola', 'Hernández', 2, '6841507548', 'interno', 'paola_hernández@construserviciosmd.com', false, '3169908914', 5, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.14', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Camilo', 'Torres', 3, '2315496511', 'interno', 'camilo_torres@construserviciosmd.com', false, '3023005794', 6, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.15', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Camilo', 'Rodríguez', 5, 'P3849369', 'interno', 'camilo_rodríguez@construserviciosmd.com', false, '3163931317', 7, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.16', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Daniela', 'Torres', 2, '7123499846', 'interno', 'daniela_torres@construserviciosmd.com', false, '3210410156', 8, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.17', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Tatiana', 'Vargas', 5, 'P7791239', 'interno', 'tatiana_vargas@construserviciosmd.com', false, '3287034578', 9, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.18', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Daniela', 'Suárez', 1, '3260656941', 'interno', 'daniela_suárez@construserviciosmd.com', false, '3194263142', 10, 1, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.19', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Daniela', 'Castro', 3, '6171005404', 'externo', 'daniela_castro@hotmail.com', false, '3234948937', 11, 1, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.20', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Julián', 'Pérez', 1, '189313604', 'externo', 'julián_pérez@gmail.com', false, '3090040019', 12, 2, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.21', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Paola', 'Reyes', 6, 'PEP97063638', 'externo', 'paola_reyes@gmail.com', false, '3270490670', 13, 1, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.22', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Paola', 'Vargas', 3, '6126268271', 'externo', 'paola_vargas@gmail.com', false, '3082578752', 14, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.23', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Paola', 'Gutiérrez', 3, '3328799980', 'externo', 'paola_gutiérrez@gmail.com', false, '3165207930', 15, 4, NULL, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.24', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('David', 'Mora', 1, '1098765432', 'interno', 'david_mora@construserviciosmd.com', true, '3120001122', 2, 2, 1, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.25', true, 3, true, 1, 'Bloqueo por múltiples intentos fallidos', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Sofía', 'López', 1, '1122334455', 'externo', 'sofia_lopez@hotmail.com', false, '3100003344', 14, 5, 1, '$2b$12$0dDWkuKpvmqc9IK8giFbAOZxuGqPoYdc4jlDiIbPShdmYd3GCY36O', NULL, '192.168.1.26', true, 0, false, NULL, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO tipos_documento (
    nombre_tipo_documento, codigo_tipo_documento, descripcion_tipo_documento,
    tipo_documento_requiere_validacion, tipo_documento_requiere_firma,
    tipo_documento_visible_por_todos, modulo_asociado_tipo_documento,
    tipo_documento_activo, id_usuario_creador_tipo_documento, created_at, updated_at
) VALUES
('Acta de Inicio', 'ACTA_INI', 'Documento que formaliza el inicio de una obra', true, true, false, 'Obras', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Acta de Suspensión', 'ACTA_SUS', 'Documento que deja constancia de la suspensión temporal de actividades', true, true, false, 'Obras', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Acta de Reanudación', 'ACTA_REA', 'Documento que valida la reanudación de obras suspendidas', true, true, false, 'Obras', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Acta de Finalización', 'ACTA_FIN', 'Documento de cierre de obra con firmas responsables', true, true, false, 'Obras', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Acta Parcial', 'ACTA_PAR', 'Avance parcial de obra para efectos de control o entrega parcial', true, true, false, 'Obras', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Informe Técnico', 'INFO_TEC', 'Reporte técnico de actividades, avances o hallazgos', true, true, false, 'Técnico', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Informe de SST', 'INFO_SST', 'Informe relacionado con condiciones de seguridad y salud en el trabajo', true, false, false, 'SST', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Informe de Calidad', 'INFO_CAL', 'Documento de no conformidades, pruebas de laboratorio, inspecciones', true, false, false, 'Calidad', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cronograma de Obra', 'CRONO_OBRA', 'Programación general de actividades constructivas', true, true, false, 'Planeación', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Reporte Diario', 'REP_DIA', 'Registro diario de actividades, personal y condiciones en obra', true, false, false, 'Campo', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Memoria de Cálculo', 'MEM_CAL', 'Documento técnico de soportes estructurales o de diseño', true, true, false, 'Diseño', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Fichas Técnicas', 'FICH_TEC', 'Documentación técnica de materiales, equipos o procesos', false, false, false, 'Calidad', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plan de Manejo Ambiental', 'PMA', 'Documento ambiental exigido para ejecución de obra', true, false, false, 'SST', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plan de Calidad', 'PLAN_CAL', 'Instrumento de control de calidad aplicable en obra', true, false, false, 'Calidad', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Oficio', 'OFI', 'Documento de comunicación formal o interna', false, false, true, 'Documentación', true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO plantillas_documento (
    nombre_plantilla_documento, id_tipo_documento_plantilla_documento,
    plantilla_documento_archivo_base, plantilla_documento_editable_web,
    campos_dinamicos_plantilla_documento, estado_plantilla_documento,
    created_at, updated_at
) VALUES
('Plantilla Acta de Inicio', 1, 'plantilla_acta_inicio.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Acta de Suspensión', 2, 'plantilla_acta_suspension.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Acta de Reanudación', 3, 'plantilla_acta_reanudacion.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Acta de Finalización', 4, 'plantilla_acta_finalizacion.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Acta Parcial', 5, 'plantilla_acta_parcial.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Informe Técnico', 6, 'plantilla_informe_tecnico.docx', true, true, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Informe SST', 7, 'plantilla_informe_sst.docx', true, true, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Informe de Calidad', 8, 'plantilla_informe_calidad.docx', true, true, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Cronograma de Obra', 9, 'plantilla_cronograma.xlsx', false, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Reporte Diario', 10, 'plantilla_reporte_diario.xlsx', false, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Memoria de Cálculo', 11, 'plantilla_memoria_calculo.pdf', false, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Fichas Técnicas', 12, 'plantilla_fichas_tecnicas.pdf', false, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Plan de Manejo Ambiental', 13, 'plantilla_pma.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Plan de Calidad', 14, 'plantilla_plan_calidad.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Plantilla Oficio', 15, 'plantilla_oficio.docx', true, false, 'activa', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO obras (
    nombre_obra, codigo_interno_obra, descripcion_obra,
    fecha_inicio_planeada_obra, fecha_fin_planeada_obra,
    id_estado_obra, id_tipo_obra,
    created_at, updated_at
) VALUES
('Construcción Centro de Salud Santa Elena', 'OBRA-2025-1000', 'Proyecto correspondiente a Construcción Centro de Salud Santa Elena, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-01', '2026-01-30', 1, 9, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Rehabilitación Vía San Miguel - La Esperanza', 'OBRA-2025-1001', 'Proyecto correspondiente a Rehabilitación Vía San Miguel - La Esperanza, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-10', '2026-03-15', 1, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Estación de Policía Rural', 'OBRA-2025-1002', 'Proyecto correspondiente a Construcción Estación de Policía Rural, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-08-01', '2026-05-30', 1, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Mejoramiento Acueducto Veredal El Roble', 'OBRA-2025-1003', 'Proyecto correspondiente a Mejoramiento Acueducto Veredal El Roble, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-09-01', '2026-01-31', 3, 8, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Colegio Técnico Agropecuario', 'OBRA-2025-1004', 'Proyecto correspondiente a Construcción Colegio Técnico Agropecuario, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-15', '2026-06-15', 2, 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Ampliación Estación de Bombeo San Carlos', 'OBRA-2025-1005', 'Proyecto correspondiente a Ampliación Estación de Bombeo San Carlos, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-08-10', '2026-04-30', 1, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Intervención Parque Principal El Carmen', 'OBRA-2025-1006', 'Proyecto correspondiente a Intervención Parque Principal El Carmen, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-05', '2026-01-31', 3, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Centro Deportivo Multifuncional', 'OBRA-2025-1007', 'Proyecto correspondiente a Construcción Centro Deportivo Multifuncional, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-10-01', '2026-09-30', 3, 8, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Estabilización Talud Vía Panamericana', 'OBRA-2025-1008', 'Proyecto correspondiente a Estabilización Talud Vía Panamericana, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-09-01', '2026-02-28', 3, 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Terminal de Transporte Regional', 'OBRA-2025-1009', 'Proyecto correspondiente a Construcción Terminal de Transporte Regional, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-01', '2026-10-31', 5, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Implementación Red de Alumbrado Público LED', 'OBRA-2025-1010', 'Proyecto correspondiente a Implementación Red de Alumbrado Público LED, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-15', '2025-12-15', 4, 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Obras de Urbanismo Sector La Ceiba', 'OBRA-2025-1011', 'Proyecto correspondiente a Obras de Urbanismo Sector La Ceiba, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-08-01', '2026-02-28', 6, 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Baterías Sanitarias Escolares', 'OBRA-2025-1012', 'Proyecto correspondiente a Construcción Baterías Sanitarias Escolares, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-07-10', '2026-03-31', 3, 10, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Construcción Salón Comunal Barrio El Lago', 'OBRA-2025-1013', 'Proyecto correspondiente a Construcción Salón Comunal Barrio El Lago, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-08-01', '2026-01-30', 1, 6, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Adecuación Estación Meteorológica Rural', 'OBRA-2025-1014', 'Proyecto correspondiente a Adecuación Estación Meteorológica Rural, ejecutado por ConstruserviciosMD en el ámbito territorial colombiano.', '2025-08-15', '2026-03-31', 6, 8, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO frentes_obra (
    nombre_frente_obra, descripcion_frente_obra, id_obra_frente_obra,
    estado_frente_obra, created_at, updated_at
) VALUES
('Movimiento de Tierras', 'Frente técnico de ejecución para actividades de movimiento de tierras en la obra.', 1, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cimentación', 'Frente técnico de ejecución para actividades de cimentación en la obra.', 2, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Estructura', 'Frente técnico de ejecución para actividades de estructura en la obra.', 3, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Mampostería', 'Frente técnico de ejecución para actividades de mampostería en la obra.', 4, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cubierta', 'Frente técnico de ejecución para actividades de cubierta en la obra.', 5, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Red Hidrosanitaria', 'Frente técnico de ejecución para actividades de red hidrosanitaria en la obra.', 6, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Red Eléctrica', 'Frente técnico de ejecución para actividades de red eléctrica en la obra.', 7, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Urbanismo', 'Frente técnico de ejecución para actividades de urbanismo en la obra.', 8, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Acabados', 'Frente técnico de ejecución para actividades de acabados en la obra.', 9, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Iluminación Pública', 'Frente técnico de ejecución para actividades de iluminación pública en la obra.', 10, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Andenes y Bordillos', 'Frente técnico de ejecución para actividades de andenes y bordillos en la obra.', 11, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Sistemas de Bombeo', 'Frente técnico de ejecución para actividades de sistemas de bombeo en la obra.', 12, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Topografía y Replanteo', 'Frente técnico de ejecución para actividades de topografía y replanteo en la obra.', 13, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Señalización Vial', 'Frente técnico de ejecución para actividades de señalización vial en la obra.', 14, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Paisajismo', 'Frente técnico de ejecución para actividades de paisajismo en la obra.', 15, 'activo', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO acciones (
    nombre_accion, codigo_accion, descripcion_accion,
    es_publica_accion, accion_requiere_registro, id_usuario_creador_accion,
    created_at, updated_at
) VALUES
('Crear obra', 'CREAR_OBRA', 'Permite registrar una nueva obra en el sistema.', false, true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Editar obra', 'EDITAR_OBRA', 'Permite modificar los datos generales de una obra.', false, true, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cerrar obra', 'CERRAR_OBRA', 'Permite cerrar técnica y administrativamente una obra.', false, true, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Crear usuario', 'CREAR_USUARIO', 'Permite crear nuevos usuarios del sistema.', false, true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Asignar rol', 'ASIGNAR_ROL', 'Permite asignar o cambiar el rol de un usuario.', false, true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Cambiar estado de usuario', 'CAM_EST_USU', 'Permite modificar el estado activo/inactivo de un usuario.', false, true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Subir evidencia', 'SUB_EVID', 'Permite adjuntar archivos de soporte a documentos o reportes.', false, true, 5, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Crear documento', 'CREAR_DOC', 'Permite registrar un nuevo documento técnico.', false, true, 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Editar documento', 'EDITAR_DOC', 'Permite modificar los metadatos o contenido del documento.', false, true, 6, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Validar documento', 'VALIDAR_DOC', 'Permite revisar y aprobar técnicamente un documento cargado.', false, true, 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Firmar documento', 'FIRMAR_DOC', 'Permite firmar electrónicamente un documento validado.', false, true, 8, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Exportar documento', 'EXPORTAR_DOC', 'Permite descargar el documento en PDF/Excel.', false, true, 9, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Crear cronograma', 'CREAR_CRON', 'Permite crear la programación de actividades de obra.', false, true, 10, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Reprogramar actividad', 'REPROG_ACT', 'Permite modificar la programación de una actividad.', false, true, 11, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Rechazar documento', 'RECHAZAR_DOC', 'Permite rechazar un documento con observaciones.', false, true, 12, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO estado_documento (
    nombre_estado_documento, codigo_estado_documento, descripcion_estado_documento,
    es_final_estado_documento, estado_documento_editable, estado_documento_requiere_validacion,
    id_usuario_creador_estado_documento, created_at, updated_at
) VALUES
('Borrador', 'DRFT', 'Documento en estado preliminar, aún no ha sido enviado a validación.', false, true, false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Pendiente', 'PEND', 'Documento creado pero aún no ha sido validado ni revisado.', false, false, false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('En revisión', 'REVS', 'Documento en proceso de revisión por el equipo técnico.', false, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('En validación', 'VALID', 'Documento en validación por el responsable designado.', false, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Observado', 'OBS', 'Documento devuelto con observaciones para ajustes.', false, true, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Aprobado', 'APRV', 'Documento aprobado formalmente, pasa a etapa de firma o publicación.', true, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Rechazado', 'RJCT', 'Documento rechazado por no cumplir criterios establecidos.', true, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Archivado', 'ARCH', 'Documento cerrado y conservado como histórico, sin acciones pendientes.', true, false, false, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Firmado', 'SIGN', 'Documento aprobado con firma electrónica o digital adjunta.', true, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Publicado', 'PUB', 'Documento publicado en el portal o disponible para terceros.', true, false, true, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO campos_personalizados (
    id_plantilla_documento_campo_personalizado, nombre_campo_personalizado,
    tipo_dato_campo_personalizado, campo_personalizado_obligatorio,
    valor_predefinido_campo_personalizado, opciones_lista_campo_personalizado,
    orden_visual_campo_personalizado, campo_personalizado_visible_para_roles,
    created_at, updated_at
) VALUES
(1, 'Fecha de inicio', 'fecha', true, NULL, NULL, 1, 'Residente de Obra,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Responsable de obra', 'texto', true, NULL, NULL, 2, 'Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Código de proyecto', 'número', true, '10001', NULL, 3, 'Administrador TIC', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, '¿Acta firmada?', 'booleano', false, 'false', NULL, 4, 'Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Motivo de suspensión', 'texto', true, NULL, NULL, 1, 'Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Duración estimada (días)', 'número', false, '15', NULL, 2, 'Gerente de Proyecto', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Documento adjunto soporte', 'archivo', false, NULL, NULL, 3, 'Interventor,Administrador TIC', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'Fecha de reanudación', 'fecha', true, NULL, NULL, 1, 'Residente de Obra,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'Condiciones de reinicio', 'texto', false, NULL, NULL, 2, 'Coordinador SST,Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Fecha de cierre técnico', 'fecha', true, NULL, NULL, 1, 'Residente de Obra,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Observaciones finales', 'texto', false, NULL, NULL, 2, 'Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Archivo adjunto (cierre)', 'archivo', false, NULL, NULL, 3, 'Administrador TIC', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Avance acumulado (%)', 'número', true, '0', NULL, 1, 'Gerente de Proyecto,Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Estado del clima', 'lista', false, 'Soleado', 'Soleado,Lluvia,Nublado', 2, 'Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Firmado por', 'texto', false, NULL, NULL, 3, 'Residente de Obra,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Supervisor asignado', 'texto', true, NULL, NULL, 1, 'Gerente de Proyecto', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Fecha de corte', 'fecha', true, NULL, NULL, 2, 'Administrador TIC,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Tipo de ejecución', 'lista', false, NULL, 'Directa,Subcontrato', 3, 'Residente de Obra,Gerente de Proyecto', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Material utilizado', 'texto', true, NULL, NULL, 1, 'Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Cantidad instalada', 'número', true, '0', NULL, 2, 'Residente de Obra', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Archivo adjunto (avance)', 'archivo', false, NULL, NULL, 3, 'Interventor,Administrador TIC', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'Código supervisor', 'texto', false, NULL, NULL, 1, 'Gerente de Proyecto', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'Justificación técnica', 'texto', true, NULL, NULL, 2, 'Residente de Obra,Interventor', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'Observación correctiva', 'texto', false, NULL, NULL, 1, 'Coordinador SST', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'Nombre del evaluador', 'texto', true, NULL, NULL, 1, 'Coordinador Calidad', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'Fecha evaluación', 'fecha', true, NULL, NULL, 2, 'Coordinador Calidad', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO procesos (
    codigo_proceso, nombre_proceso, descripcion_proceso,
    tipo_proceso, id_proceso_padre, id_usuario_responsable_proceso,
    activo, created_at, updated_at
) VALUES
('PROC-001', 'Planificación Estratégica', 'Definición de metas institucionales y planes a largo plazo.', 'estratégico', NULL, 1, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-002', 'Gestión de Proyectos de Obra', 'Planeación, ejecución y control de obras de infraestructura.', 'misional', NULL, 2, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-003', 'Supervisión e Interventoría', 'Verificación técnica, legal y administrativa de obras ejecutadas.', 'misional', NULL, 3, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-004', 'Gestión de Seguridad y Salud en el Trabajo', 'Implementación de condiciones seguras en la ejecución de proyectos.', 'apoyo', NULL, 4, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-005', 'Gestión de Calidad en Obras', 'Aseguramiento y control de calidad en procesos constructivos.', 'apoyo', NULL, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-006', 'Gestión Documental', 'Control, custodia y trazabilidad de la información generada.', 'apoyo', NULL, 6, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-007', 'Gestión de Recursos Humanos', 'Administración de personal técnico, administrativo y de campo.', 'apoyo', NULL, 7, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-008', 'Seguimiento de Cronogramas', 'Monitoreo y actualización de actividades programadas en obra.', 'operativo', 2, 8, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-009', 'Control de Avance Físico y Financiero', 'Medición del progreso constructivo y ejecución presupuestal.', 'operativo', 2, 9, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-010', 'Atención a la Comunidad', 'Gestión de comunicaciones y participación ciudadana.', 'misional', NULL, 10, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-011', 'Revisión de Diseños', 'Evaluación técnica de diseños arquitectónicos, estructurales y redes.', 'operativo', 3, 2, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-012', 'Gestión Ambiental', 'Implementación de medidas de manejo ambiental en obra.', 'apoyo', 2, 3, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-013', 'Auditoría Interna', 'Evaluación independiente de cumplimiento de procedimientos.', 'estratégico', 1, 1, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-014', 'Evaluación de Proveedores', 'Seguimiento a calidad y desempeño de proveedores y contratistas.', 'apoyo', 5, 4, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('PROC-015', 'Soporte Técnico y Sistemas', 'Atención de incidentes, mantenimiento y soporte de infraestructura TIC.', 'apoyo', NULL, 1, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO componentes_obra (
    id_obra_componente_obra, nombre_componente_obra, descripcion_componente_obra,
    componente_obra_activo, created_at, updated_at
) VALUES
(1, 'Bloque Principal Consultorios', 'Zona de atención general y consultorios médicos', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Área de Urgencias', 'Sección especializada en emergencias médicas', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Tramo 1: Sector San Miguel', 'Sección inicial del trazado vial intervenido', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Tramo 2: Sector La Esperanza', 'Segunda sección del proyecto vial', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'Bloque Administrativo', 'Oficinas de comando y salas de reunión', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'Bloque de Detención Transitoria', 'Área de detención preventiva para capturados', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Captación Acueducto', 'Infraestructura para captación de agua', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Red de Distribución Veredal', 'Tubería y acometidas a viviendas', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Bloque Académico A', 'Aulas técnicas para formación agropecuaria', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Bloque de Laboratorios', 'Laboratorios de suelos, microbiología, agroindustria', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Casa de Bombas', 'Área técnica con equipos de bombeo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Sala de Control', 'Sistema SCADA, tableros y control de caudal', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Plazoleta Central', 'Zona de encuentro y recreación ciudadana', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Andenes y Ciclorrutas', 'Infraestructura peatonal y ciclística', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'Bloque Deportivo Cubierto', 'Cancha múltiple cubierta, camerinos y graderías', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'Piscina Semiolímpica', 'Zona acuática para entrenamiento y recreación', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'Muro de Contención Talud 1', 'Estructura de sostenimiento por gravedad', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'Bloque Terminal de Buses', 'Área de abordaje y despacho de rutas', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 'Red LED Principal', 'Tendido de luminarias LED sobre vías arteriales', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 'Zona Verde La Ceiba', 'Adecuación paisajística y arborización', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO documentos (
    id_usuario_creador_documento, id_tipo_documento, id_estado_documento,
    id_usuario_generador_documento, nombre_archivo_documento, ruta_archivo_documento,
    version_documento, fecha_vencimiento_documento, observaciones_documento,
    requiere_aprobacion_documento, created_at, updated_at
) VALUES
(1, 1, 1, 1, 'acta_inicio_obra001.pdf', 'https://drive.google.com/file/d/1aB3CXYZ01/view', '1.0', NULL, 'Documento cargado como borrador inicial.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(2, 2, 2, 2, 'suspension_temporal_obra002.pdf', 'https://drive.google.com/file/d/1aB3CXYZ02/view', '1.0', '2025-09-01', NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(3, 3, 6, 3, 'reanudacion_obra003.pdf', 'https://drive.google.com/file/d/1aB3CXYZ03/view', '1.0', NULL, 'Reanudación aprobada sin observaciones.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(4, 4, 6, 4, 'acta_finalizacion_obra004.pdf', 'https://drive.google.com/file/d/1aB3CXYZ04/view', '1.1', NULL, NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(5, 5, 2, 5, 'acta_parcial_obra005.pdf', 'https://drive.google.com/file/d/1aB3CXYZ05/view', '1.0', '2025-08-15', NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(6, 6, 6, 6, 'informe_tecnico_avance006.pdf', 'https://drive.google.com/file/d/1aB3CXYZ06/view', '2.0', NULL, 'Contiene resultados de laboratorio.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(7, 7, 7, 7, 'informe_sst_incidente007.pdf', 'https://drive.google.com/file/d/1aB3CXYZ07/view', '1.0', NULL, 'Rechazado por falta de firma.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(8, 8, 6, 8, 'informe_calidad_obra008.pdf', 'https://drive.google.com/file/d/1aB3CXYZ08/view', '1.0', NULL, 'Validado por laboratorio externo.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(9, 9, 2, 9, 'cronograma_general_obra009.xlsx', 'https://drive.google.com/file/d/1aB3CXYZ09/view', '1.0', '2025-12-31', NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(10, 10, 6, 10, 'reporte_diario_20250624.xlsx', 'https://drive.google.com/file/d/1aB3CXYZ10/view', '1.0', NULL, NULL, false, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(1, 11, 6, 1, 'memoria_calculo_estructura011.pdf', 'https://drive.google.com/file/d/1aB3CXYZ11/view', '1.1', NULL, 'Incluye simulación estructural.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(2, 12, 2, 2, 'fichas_tecnicas_material012.pdf', 'https://drive.google.com/file/d/1aB3CXYZ12/view', '1.0', NULL, NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(3, 13, 6, 3, 'plan_manejo_ambiental_obra013.docx', 'https://drive.google.com/file/d/1aB3CXYZ13/view', '1.0', NULL, NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(4, 14, 2, 4, 'plan_calidad_obra014.docx', 'https://drive.google.com/file/d/1aB3CXYZ14/view', '1.0', '2026-01-01', NULL, true, '2025-06-24 15:31:51', '2025-06-24 15:31:51'),
(5, 15, 1, 5, 'oficio_solicitud_aprobacion015.pdf', 'https://drive.google.com/file/d/1aB3CXYZ15/view', '1.0', NULL, 'Redactado por asistente administrativo.', true, '2025-06-24 15:31:51', '2025-06-24 15:31:51');

INSERT INTO bloqueos_usuarios (
    id_usuario_afectado_bloqueo_usuario, tipo_bloqueo_usuario, motivo_bloqueo_usuario,
    fecha_bloqueo_usuario, id_usuario_origen_bloqueo_usuario,
    duracion_minutos_bloqueo_usuario, fecha_expiracion_bloqueo_usuario,
    bloqueo_usuario_resuelto, created_at, updated_at
) VALUES
(5, 'automático', 'Bloqueo por superar número de intentos fallidos al iniciar sesión.', '2025-06-24 10:00:00', 1, 30, '2025-06-24 10:30:00', false, '2025-06-24 10:00:00', '2025-06-24 10:00:00'),
(8, 'manual', 'Bloqueo preventivo solicitado por Gerencia mientras se revisan documentos cargados.', '2025-06-22 14:20:00', 2, NULL, NULL, true, '2025-06-22 14:20:00', '2025-06-23 08:00:00'),
(3, 'seguridad', 'Actividad inusual detectada en múltiples IPs.', '2025-06-21 16:45:00', 1, 1440, '2025-06-22 16:45:00', false, '2025-06-21 16:45:00', '2025-06-21 16:45:00'),
(12, 'sistema', 'Bloqueo ejecutado por política de acceso restringido en rol externo.', '2025-06-20 09:00:00', 1, NULL, NULL, true, '2025-06-20 09:00:00', '2025-06-20 12:00:00'),
(9, 'manual', 'Usuario solicitó inactivación temporal por licencia médica.', '2025-06-19 08:30:00', 4, 43200, '2025-08-03 08:30:00', false, '2025-06-19 08:30:00', '2025-06-19 08:30:00'),
(14, 'automático', 'Acceso desde IP bloqueada por políticas de firewall.', '2025-06-18 18:15:00', 1, 60, '2025-06-18 19:15:00', true, '2025-06-18 18:15:00', '2025-06-18 19:30:00'),
(11, 'sistema', 'Inconsistencias en datos de identidad detectadas al validar documentos.', '2025-06-17 17:45:00', 1, NULL, NULL, true, '2025-06-17 17:45:00', '2025-06-18 08:00:00'),
(6, 'manual', 'Bloqueo administrativo por requerimiento de auditoría externa.', '2025-06-15 10:10:00', 2, NULL, NULL, false, '2025-06-15 10:10:00', '2025-06-15 10:10:00');

INSERT INTO ubicaciones_obra (
    id_obra_ubicacion_obra, departamento_ubicacion_obra, municipio_ubicacion_obra,
    ubicacion_obra_direccion_exacta, ubicacion_obra_coordenada_latitud,
    ubicacion_obra_coordenada_longitud, ubicacion_obra_punto_referencia,
    zona_ubicacion_obra, created_at, updated_at
) VALUES
(1, 'Antioquia', 'Medellín', 'Carrera 45 #32-16, Comuna 10', 6.251840, -75.563591, 'Cerca al Hospital General', 'Urbana', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Cundinamarca', 'Soacha', 'Vereda San Miguel', 4.578880, -74.217928, 'Frente al colegio rural', 'Rural', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'Nariño', 'Pasto', 'Cra 5 con Calle 22, Barrio Obrero', 1.208926, -77.281103, 'Diagonal al CAI del Obrero', 'Centro', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'Santander', 'Bucaramanga', 'Av. La Rosita con Calle 32', 7.116420, -73.119800, 'Cerca al Éxito', 'Periferia', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Córdoba', 'Montería', 'Km 6 Vía Planeta Rica', 8.747980, -75.881432, 'Frente a la subestación eléctrica', 'Rural', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Atlántico', 'Barranquilla', 'Cra 51B #79-300', 10.987772, -74.788918, 'Frente a Olimpica 84', 'Urbana', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Huila', 'Neiva', 'Calle 18 Sur #7-13', 2.938630, -75.281120, 'Junto a la cancha comunal', 'Centro', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'Valle del Cauca', 'Cali', 'Av. Simón Bolívar con Carrera 80', 3.409020, -76.520176, 'Frente al parque Las Banderas', 'Urbana', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'Cauca', 'Popayán', 'Vereda El Patía, vía nacional', 2.447800, -76.614739, 'Frente a estación de policía rural', 'Rural', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'Tolima', 'Ibagué', 'Calle 60 con Av. Ambalá', 4.444730, -75.232151, 'Diagonal a centro comercial Multicentro', 'Periferia', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 'Bolívar', 'Cartagena', 'Cra 21 con Calle 31, sector El Pozón', 10.393199, -75.479402, 'Cerca a estación de Transcaribe', 'Urbana', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 'Meta', 'Villavicencio', 'Cra 32 #19-80', 4.122610, -73.626500, 'Frente a Clínica Primavera', 'Centro', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 'Boyacá', 'Tunja', 'Barrio La María, Calle 14 #9-22', 5.544670, -73.357590, 'Junto a CDI La Esperanza', 'Periferia', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 'Magdalena', 'Santa Marta', 'Sector Bonda, Km 5', 11.247235, -74.206482, 'Cerca a la estación de Policía', 'Rural', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(15, 'Risaralda', 'Pereira', 'Vereda El Lago, zona rural', 4.814660, -75.694520, 'Frente a la sede comunal El Lago', 'Rural', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO documentos_obligatorios_por_rol (
    id_tipo_documento_obligatorio_rol, id_rol_responsable_documento_obligatorio,
    id_estado_usuario_obligatorio_documento_rol, descripcion_documento_obligatorio_rol,
    created_at, updated_at
) VALUES
(1, 7, 1, 'El residente de obra debe cargar el acta de inicio una vez el proyecto esté activo.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 6, 1, 'El interventor es responsable de cargar el acta de suspensión cuando aplique.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 6, 1, 'El interventor debe adjuntar el acta de reanudación tras suspensión temporal.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 6, 1, 'El interventor debe cargar el acta de finalización al cierre del proyecto.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 7, 1, 'El residente debe registrar actas parciales por cada hito de avance.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 11, 1, 'El documentador debe subir el informe técnico como parte del cierre parcial.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 4, 1, 'El Coordinador SST debe cargar los informes mensuales de seguridad y salud.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 5, 1, 'El Coordinador de Calidad debe registrar los informes técnicos de calidad.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 12, 1, 'El Ingeniero de Planeación debe registrar el cronograma inicial.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 7, 1, 'El residente de obra debe generar el reporte diario al final de cada jornada.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 1, 1, 'El Administrador TIC carga la memoria de cálculo al recibir el archivo base.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 5, 1, 'El Coordinador de Calidad debe registrar las fichas técnicas de materiales.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 4, 1, 'El Coordinador SST es responsable de cargar el PMA aprobado por la autoridad.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 5, 1, 'El Coordinador de Calidad debe adjuntar el Plan de Calidad al inicio del contrato.', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(15, 8, 1, 'El Asistente Administrativo genera los oficios para envío de actas u oficios internos.', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO comentarios_documento (
    id_documento_comentario_documento, id_usuario_autor_comentario_documento,
    comentario_documento, tipo_comentario_documento, comentario_documento_visible_para_firmantes,
    created_at, updated_at
) VALUES
(1, 6, 'El documento cumple con los requisitos técnicos. Aprobado para firma.', 'informativo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 5, 'Se recomienda mejorar la resolución de la imagen del plano en la página 3.', 'observación', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 4, 'Falta incluir el sello del interventor. Documento rechazado hasta corrección.', 'rechazo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 7, 'Este documento está en proceso de revisión por parte del equipo técnico.', 'revisión', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 9, 'Por favor incluir el análisis de laboratorio correspondiente al concreto fundido.', 'observación', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 6, 'Los resultados de pruebas fueron consistentes. Apto para aprobación.', 'informativo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 8, 'El documento contiene errores de digitación en el folio 2.', 'rechazo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 11, 'Formato actualizado de manera correcta. Se autoriza validación.', 'informativo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 5, 'Se encontró inconsistencia entre fechas del acta y el cronograma.', 'observación', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 14, 'Este documento debe firmarse antes del viernes 28 para legalizar proceso.', 'informativo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 12, 'Pendiente revisión de anexos. No proceder aún con firma.', 'revisión', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 13, 'Documento rechazado por falta de numeración interna.', 'rechazo', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO tokens_recuperacion (
    id_usuario_generador_token_recuperacion, valor_token_recuperacion,
    expiracion_token_recuperacion, token_recuperacion_usado, created_at, updated_at
) VALUES
(1, 'a3f7b9d8c2e4f5a1b3c7d6e8f9a0b1c2', '2025-06-25 14:00:00', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'e9b1c0a3d4f5b6a7c8d9e0f1a2b3c4d5', '2025-06-24 15:30:00', false, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
(3, 'f4d6c3b2a1e8f9d0c5a4b3c2d1e0f9a8', '2025-06-23 23:59:59', true, '2025-06-23 10:10:10', '2025-06-23 10:10:10'),
(4, 'd1a2f3e4c5b6d7a8e9f0c1b2a3d4e5f6', '2025-06-25 18:00:00', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'b9c8d7a6f5e4c3b2a1d0f9e8c7b6a5d4', '2025-06-22 09:30:00', true, '2025-06-22 07:00:00', '2025-06-22 07:00:00'),
(6, 'c1e2f3a4b5d6c7e8f9a0b1c2d3e4f5a6', '2025-06-24 17:00:00', false, '2025-06-24 11:00:00', '2025-06-24 11:00:00'),
(7, 'f1d2c3b4a5e6f7d8c9a0b1c2d3e4f5a6', '2025-06-24 13:00:00', true, '2025-06-24 08:45:00', '2025-06-24 08:45:00'),
(8, 'e8f7d6c5b4a3f2e1d0c9b8a7f6e5d4c3', '2025-06-26 12:00:00', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6', '2025-06-27 10:30:00', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'd6c5b4a3e2f1d0c9b8a7f6e5d4c3b2a1', '2025-06-24 10:00:00', true, '2025-06-24 06:00:00', '2025-06-24 06:00:00');

INSERT INTO requerimientos_firma_documento (
    id_tipo_documento_requerimiento_firma, id_rol_responsable_requerimiento_firma,
    orden_requerimiento_firma, requerimiento_firma_obligatoria,
    id_estado_documento_requerimiento_firma, condicion_aplicacion_requerimiento_firma,
    created_at, updated_at
) VALUES
-- Acta de Inicio: Firma obligatoria del residente, luego del interventor
(1, 7, 1, true, 2, 'Siempre se requiere firma del residente para validar ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 6, 2, true, 2, 'Validación técnica por parte del interventor antes de legalización', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
-- Acta de Suspensión: Firma única del interventor
(2, 6, 1, true, 2, 'Aplica solo si obra está en estado de suspensión temporal', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
-- Informe de SST: Firma del Coordinador SST
(7, 4, 1, true, 2, 'Responsabilidad directa de SST en todas las obras activas', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
-- Plan de Calidad: Firma del Coordinador de Calidad, luego del Gerente Proyecto
(14, 5, 1, true, 2, 'Aplica para obras con presupuesto superior a 100M', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 3, 2, true, 2, 'Solo si la obra involucra actividades técnicas de alto riesgo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
-- Oficios: Firma opcional del Asistente Administrativo (casos informativos)
(15, 8, 1, false, 2, 'Solo se requiere si el oficio contiene aprobación de actividad oficial', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
-- Informe Técnico: Firma del documentador y validación por Interventor
(6, 11, 1, true, 2, 'Validación técnica interna por quien lo cargó', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 6, 2, true, 2, 'Autorización técnica externa antes de cierre', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO flujos_documentales (
    nombre_flujo_documental, descripcion_flujo_documental,
    id_tipo_documento_flujo_documental, id_rol_flujo_documental,
    id_estado_documento_inicio_flujo_documental, id_estado_documento_final_flujo_documental,
    flujo_documental_requiere_firma_digital, vencimiento_dias_flujo_documental,
    flujo_documental_activo, created_at, updated_at
) VALUES
('Flujo Acta de Inicio Obra', 'Validación técnica por Residente y aprobación de Interventor para dar apertura contractual', 1, 7, 1, 3, true, 10, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Acta de Suspensión', 'Aplica en caso de parálisis técnica. Firmado por Interventor', 2, 6, 2, 3, true, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Informe SST Mensual', 'Cargado por Coordinador SST, validado por Interventor', 7, 4, 2, 3, true, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Informe de Calidad', 'Validación de laboratorio y firma por Coordinador de Calidad', 8, 5, 2, 3, true, 7, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Reporte Diario de Obra', 'Cargado por Residente con anexos, visible para Supervisor y Coordinador SST', 10, 7, 1, 3, false, 2, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Plan de Calidad Inicial', 'Debe ser aprobado antes de iniciar ejecución. Rol responsable: Coordinador de Calidad', 14, 5, 1, 3, true, 10, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Oficios de Correspondencia', 'Oficios generados por Asistente Administrativo. No requiere firma digital obligatoria.', 15, 8, 1, 3, false, 2, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Cronograma Inicial', 'Cronograma aprobado por Interventoría. Cargado por Planeación', 9, 12, 2, 3, true, 7, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo PMA Obra Pública', 'Plan de Manejo Ambiental aprobado por Coordinador SST', 13, 4, 1, 3, true, 10, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Flujo Acta de Finalización', 'Acta final cargada por Residente y validada por Interventor para archivo', 4, 7, 2, 3, true, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO reportes_diarios_obra (
    id_obra_reporte_diario_obra, id_usuario_responsable_reporte_diario_obra,
    fecha_reporte_diario_obra, observaciones_reporte_diario_obra,
    created_at, updated_at
) VALUES
(1, 7, '2025-06-20', 'Se iniciaron labores de replanteo topográfico con condiciones climáticas favorables.', '2025-06-20 18:05:00', '2025-06-20 18:05:00'),
(1, 4, '2025-06-20', 'Inspección SST realizada. Se detectaron 2 trabajadores sin EPP en área de excavación.', '2025-06-20 18:06:00', '2025-06-20 18:06:00'),
(2, 7, '2025-06-21', 'Comienzo de labores de demolición de pavimento existente. Se presenta tráfico intermitente.', '2025-06-21 18:10:00', '2025-06-21 18:10:00'),
(3, 5, '2025-06-21', 'Coordinación de pruebas de concreto para fundida de columnas del segundo nivel.', '2025-06-21 18:20:00', '2025-06-21 18:20:00'),
(4, 7, '2025-06-22', 'Se trabajó medio día por lluvias intensas. Actividades se retomarán al mejorar clima.', '2025-06-22 17:40:00', '2025-06-22 17:40:00'),
(5, 7, '2025-06-22', 'Se avanzó con instalación de cubierta. 50% de avance estructural en bloque A.', '2025-06-22 17:42:00', '2025-06-22 17:42:00'),
(6, 4, '2025-06-23', 'Verificación de señalización perimetral. Recomendación de instalar mallas adicionales.', '2025-06-23 17:30:00', '2025-06-23 17:30:00'),
(7, 5, '2025-06-23', 'Recepción de materiales certificados para acabados. Se actualizó control de calidad.', '2025-06-23 17:35:00', '2025-06-23 17:35:00'),
(8, 7, '2025-06-24', 'Instalación de adoquines en zona peatonal. Actividad sin novedades.', '2025-06-24 17:50:00', '2025-06-24 17:50:00'),
(9, 6, '2025-06-24', 'Inspección técnica al sistema de drenaje. Se reportó obstrucción parcial.', '2025-06-24 17:55:00', '2025-06-24 17:55:00'),
(10, 10, '2025-06-24', 'Se levantó informe de actividad diaria de frente de iluminación. Avance del 20%.', '2025-06-24 18:00:00', '2025-06-24 18:00:00');

INSERT INTO historial_estados_documento (
    id_documento_historial_estado, id_estado_documento_historial_anterior,
    id_estado_documento_historial_nuevo, id_usuario_ejecutor_historial_estado_documento,
    id_rol_historial_estado_documento, motivo_cambio_historial_estado_documento,
    fecha_cambio_historial_estado_documento, ip_origen_historial_estado_documento,
    user_agent_historial_estado_documento, created_at, updated_at
) VALUES
(1, NULL, 1, 7, 7, 'Documento creado y cargado por el residente de obra.', '2025-06-20 08:30:00', '192.168.1.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-20 08:30:00', '2025-06-20 08:30:00'),
(1, 1, 2, 6, 6, 'El documento fue enviado a revisión por el interventor.', '2025-06-20 09:00:00', '192.168.1.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', '2025-06-20 09:00:00', '2025-06-20 09:00:00'),
(1, 2, 3, 6, 6, 'El documento fue aprobado sin observaciones.', '2025-06-20 10:00:00', '192.168.1.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', '2025-06-20 10:00:00', '2025-06-20 10:00:00'),

(2, NULL, 1, 4, 4, 'Informe SST inicial cargado por Coordinador SST.', '2025-06-21 08:45:00', '192.168.1.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-21 08:45:00', '2025-06-21 08:45:00'),
(2, 1, 2, 6, 6, 'En revisión técnica por parte de Interventoría.', '2025-06-21 09:10:00', '192.168.1.16', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', '2025-06-21 09:10:00', '2025-06-21 09:10:00'),
(2, 2, 4, 6, 6, 'Documento rechazado por falta de firma digital.', '2025-06-21 10:00:00', '192.168.1.16', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', '2025-06-21 10:00:00', '2025-06-21 10:00:00'),

(3, NULL, 1, 5, 5, 'Plan de calidad inicial cargado para obra nueva.', '2025-06-22 07:30:00', '192.168.1.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-22 07:30:00', '2025-06-22 07:30:00'),
(3, 1, 2, 3, 3, 'Gerente de proyecto revisa y solicita firma faltante.', '2025-06-22 09:00:00', '192.168.1.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1)', '2025-06-22 09:00:00', '2025-06-22 09:00:00');

INSERT INTO firmas_documento (
    id_documento_firma, id_usuario_responsable_firma_documento,
    id_rol_responsable_firma_documento, tipo_firma_documento,
    fecha_firma_documento, ip_origen_firma_documento, user_agent_firma_documento,
    observaciones_firma_documento, archivo_firma_documento,
    created_at, updated_at
) VALUES
(1, 7, 7, 'digital', '2025-06-20 10:15:00', '192.168.1.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Firma electrónica validando apertura de acta de inicio.', NULL, '2025-06-20 10:15:00', '2025-06-20 10:15:00'),
(1, 6, 6, 'digital', '2025-06-20 10:45:00', '192.168.1.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 'Interventor valida técnicamente el acta de inicio.', NULL, '2025-06-20 10:45:00', '2025-06-20 10:45:00'),
(2, 4, 4, 'manual', '2025-06-21 11:00:00', '192.168.1.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Firma manual de Coordinador SST. Cargado escaneo.', 'firmas/scan_firma_sst_acta_suspension.pdf', '2025-06-21 11:00:00', '2025-06-21 11:00:00'),
(3, 5, 5, 'digital', '2025-06-22 08:20:00', '192.168.1.13', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', 'Plan de calidad firmado electrónicamente por Coordinador de Calidad.', NULL, '2025-06-22 08:20:00', '2025-06-22 08:20:00'),
(3, 3, 3, 'código', '2025-06-22 09:10:00', '192.168.1.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1)', 'Aprobación por Gerente de Proyecto mediante código de autenticación.', NULL, '2025-06-22 09:10:00', '2025-06-22 09:10:00'),
(4, 7, 7, 'digital', '2025-06-23 10:00:00', '192.168.1.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Firma digital sobre informe técnico de obra diaria.', NULL, '2025-06-23 10:00:00', '2025-06-23 10:00:00'),
(5, 8, 8, 'digital', '2025-06-23 10:10:00', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Firma de validación de acta de inicio por Coordinador SST.', NULL, '2025-06-23 10:10:00', '2025-06-23 10:10:00'),
(2, 12, 12, 'digital', '2025-06-23 10:15:00', '192.168.1.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 'Interventor técnico firma acta de reunión.', NULL, '2025-06-23 10:15:00', '2025-06-23 10:15:00'),
(3, 10, 10, 'código', '2025-06-23 10:20:00', '192.168.1.32', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', 'Firma mediante código para validar documento de calidad.', NULL, '2025-06-23 10:20:00', '2025-06-23 10:20:00'),
(2, 3, 3, 'digital', '2025-06-23 10:25:00', '192.168.1.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Gerente de Proyecto valida plan técnico.', NULL, '2025-06-23 10:25:00', '2025-06-23 10:25:00'),
(3, 13, 13, 'manual', '2025-06-23 10:30:00', '192.168.1.34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 'Firma escaneada por Coordinador de Calidad.', 'firmas/scan_calidad_001.pdf', '2025-06-23 10:30:00', '2025-06-23 10:30:00'),
(5, 4, 4, 'digital', '2025-06-23 10:35:00', '192.168.1.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Interventor revisa documento final SST.', NULL, '2025-06-23 10:35:00', '2025-06-23 10:35:00'),
(1, 9, 9, 'digital', '2025-06-23 10:40:00', '192.168.1.36', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', 'Firma digital por Residente de Obra en acta inicial.', NULL, '2025-06-23 10:40:00', '2025-06-23 10:40:00'),
(2, 11, 11, 'código', '2025-06-23 10:45:00', '192.168.1.37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 'Aprobación vía token enviada al celular.', NULL, '2025-06-23 10:45:00', '2025-06-23 10:45:00'),
(4, 16, 16, 'manual', '2025-06-23 10:50:00', '192.168.1.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Firma escaneada de archivo adjunto calidad.', 'firmas/manual_16_scan.pdf', '2025-06-23 10:50:00', '2025-06-23 10:50:00');

INSERT INTO auditorias_internas (
    codigo_auditoria_interna, nombre_auditoria_interna,
    objetivo_auditoria_interna, alcance_auditoria_interna,
    id_proceso_auditoria_interna, id_usuario_responsable_auditoria_interna,
    fecha_programada_auditoria_interna, fecha_ejecucion_auditoria_interna,
    estado_auditoria_interna, resultado_auditoria_interna,
    recomendaciones_auditoria_interna, evidencia_documental_auditoria_interna,
    created_at, updated_at
) VALUES
('AUD-2025-01', 'Auditoría al Plan de Calidad', 'Verificar cumplimiento del plan de calidad en obra 001.', 'Obra: Centro de Salud Santa Elena, documentos técnicos y cronograma de calidad.', 1, 11, '2025-06-15', '2025-06-17', 'Finalizada', 'Se encontró una desviación menor en el control de recepción de materiales.', 'Reforzar checklist de laboratorio y control de fichas técnicas.', true, '2025-06-17 12:00:00', '2025-06-17 12:00:00'),
('AUD-2025-02', 'Auditoría SST Obra 002', 'Evaluar condiciones de SST en obra vial en ejecución.', 'Revisión en campo y entrevistas en la obra San Miguel - La Esperanza.', NULL, 11, '2025-06-20', NULL, 'Programada', NULL, NULL, false, '2025-06-20 08:00:00', '2025-06-20 08:00:00'),
('AUD-2025-03', 'Auditoría de Documentación Técnica', 'Asegurar la trazabilidad documental en actas y reportes de obra.', 'Incluye: actas de inicio, reanudación y finalización de obras 003 y 004.', 3, 11, '2025-06-21', '2025-06-23', 'Finalizada', 'Alta conformidad, con observaciones menores en numeración de actas.', 'Estandarizar código de documento en plantilla. Agregar revisión por coordinador.', true, '2025-06-23 17:00:00', '2025-06-23 17:00:00'),
('AUD-2025-04', 'Auditoría al Proceso de Planeación', 'Evaluar la precisión y consistencia en los cronogramas de obra.', 'Revisión de programación en plataforma y bitácora física. Obras 005–006.', 2, 11, '2025-06-25', NULL, 'Programada', NULL, NULL, false, '2025-06-24 09:00:00', '2025-06-24 09:00:00'),
('AUD-2025-05', 'Auditoría Técnica Interna SST', 'Verificar implementación del plan SST en obra urbana.', 'Obra 007. Inspección física, revisión de actos administrativos, entrevistas.', 4, 11, '2025-06-22', '2025-06-23', 'Finalizada', 'Se identificaron puntos de mejora en señalización y uso de EPP.', 'Reentrenar al personal sobre normativas SST vigentes y seguimiento diario.', true, '2025-06-23 18:00:00', '2025-06-23 18:00:00');

INSERT INTO solicitudes_desbloqueo (
    id_usuario_solicitante_desbloqueo, id_bloqueo_usuario_solicitud,
    fecha_solicitud_desbloqueo, metodo_verificacion_desbloqueo,
    estado_solicitud_desbloqueo, id_usuario_validador_solicitud_desbloqueo,
    fecha_respuesta_solicitud_desbloqueo, observaciones_solicitud_desbloqueo,
    created_at, updated_at
) VALUES
(16, 1, '2025-06-24 08:00:00', 'correo institucional', 'pendiente', NULL, NULL, NULL, '2025-06-24 08:00:00', '2025-06-24 08:00:00'),
(16, 1, '2025-06-24 10:30:00', 'videollamada', 'rechazada', 1, '2025-06-24 11:00:00', 'Se evidenció que el usuario no cumplió proceso formal de verificación.', '2025-06-24 10:30:00', '2025-06-24 11:00:00'),
(16, 1, '2025-06-25 09:15:00', 'correo institucional', 'aprobada', 2, '2025-06-25 10:00:00', 'Verificación por correo con validación del dominio completada correctamente.', '2025-06-25 09:15:00', '2025-06-25 10:00:00'),
(14, 2, '2025-06-25 11:20:00', 'autenticación biométrica', 'pendiente', NULL, NULL, NULL, '2025-06-25 11:20:00', '2025-06-25 11:20:00');

INSERT INTO etapas_flujo_documental (
    id_flujo_documental_etapa, orden_etapa_flujo_documental,
    id_rol_responsable_flujo_documental, accion_esperada_flujo_documental,
    id_estado_documento_flujo, tiempo_maximo_dias_flujo_documental,
    condicion_salida_flujo_documental, flujo_documental_activo,
    created_at, updated_at
) VALUES
-- Etapas del flujo "Flujo de firmas SST" (id 1)
(1, 1, 4, 'firmar', 2, 2, 'Se requiere firma del Coordinador SST antes de revisión técnica', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
(1, 2, 6, 'validar', 3, 3, 'Validación del Interventor sin observaciones pendientes', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
-- Etapas del flujo "Flujo Plan de Calidad" (id 2)
(2, 1, 5, 'firmar', 2, 2, 'Solo aplica si el documento contiene actividades de control técnico', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
(2, 2, 3, 'aprobar', 3, 4, 'Se requiere firma del Gerente si presupuesto > 100 millones', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
-- Etapas del flujo "Revisión de Oficios Informativos" (id 3)
(3, 1, 8, 'revisar', 2, 2, 'Firma solo si contiene compromiso institucional', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
(3, 2, 6, 'firmar', 3, 2, 'Validación final del interventor antes de publicar el oficio', true, '2025-06-24 12:00:00', '2025-06-24 12:00:00');

INSERT INTO historial_estados_obra (
    id_obra_historial_estado, id_estado_obra_historial,
    id_usuario_modificador_historial_estado_obra,
    fecha_cambio_historial_estado_obra, observacion_historial_estado_obra,
    created_at, updated_at
) VALUES
(1, 1, 2, '2025-05-01 09:00:00', 'Inicio formal de la fase de planeación del proyecto por parte del equipo técnico.', '2025-05-01 09:00:00', '2025-05-01 09:00:00'),
(1, 2, 3, '2025-06-01 08:00:00', 'La obra pasó a fase de ejecución tras aprobación del cronograma y acta de inicio.', '2025-06-01 08:00:00', '2025-06-01 08:00:00'),

(2, 1, 2, '2025-05-10 10:00:00', 'Se inicia la fase preliminar de estudios de la obra vial.', '2025-05-10 10:00:00', '2025-05-10 10:00:00'),
(2, 2, 3, '2025-06-05 07:30:00', 'Fase de ejecución habilitada por interventoría.', '2025-06-05 07:30:00', '2025-06-05 07:30:00'),
(2, 3, 4, '2025-06-12 13:45:00', 'Obra suspendida temporalmente por condiciones climáticas.', '2025-06-12 13:45:00', '2025-06-12 13:45:00'),
(2, 2, 4, '2025-06-20 09:00:00', 'Reanudación autorizada tras inspección técnica.', '2025-06-20 09:00:00', '2025-06-20 09:00:00'),

(3, 1, 2, '2025-04-15 14:00:00', 'Inicio de planeación para construcción de estación.', '2025-04-15 14:00:00', '2025-04-15 14:00:00'),
(3, 2, 3, '2025-05-15 08:15:00', 'Inicio formal de ejecución con maquinaria y personal.', '2025-05-15 08:15:00', '2025-05-15 08:15:00'),
(3, 4, 5, '2025-06-22 17:30:00', 'Obra finalizada y verificada por el coordinador de calidad.', '2025-06-22 17:30:00', '2025-06-22 17:30:00');

INSERT INTO modulos (
    nombre_modulo, codigo_modulo, descripcion_modulo,
    ruta_modulo, icono_modulo, modulo_activo,
    id_usuario_creador_modulo, created_at, updated_at
) VALUES
('Gestión Documental', 'DOC_MGMT', 'Permite registrar, firmar, validar y consultar documentos de obra o administrativos.', '/documentos', 'file-text', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Usuarios y Accesos', 'USR_MGMT', 'Módulo para administrar usuarios, roles, estados y permisos de acceso al sistema.', '/usuarios', 'users', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Gestión de Obras', 'OBRA_MGMT', 'Registro, actualización y consulta de obras activas, suspendidas o finalizadas.', '/obras', 'hammer', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Cronogramas y Avances', 'CRONO_MGMT', 'Creación de cronogramas, reprogramaciones y seguimiento de actividades.', '/cronogramas', 'calendar-clock', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Gestión de Calidad', 'CALIDAD_MGMT', 'Módulo especializado en fichas técnicas, hallazgos, inspecciones y actas de calidad.', '/calidad', 'check-circle', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Seguridad y Salud en el Trabajo', 'SST_MGMT', 'Reportes, informes y matrices relacionadas con SST.', '/sst', 'shield-alert', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Reportes Diarios de Obra', 'RDO_MGMT', 'Permite a residentes y coordinadores cargar registros diarios de obra.', '/reportes-diarios', 'clipboard-list', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Auditorías Internas', 'AUD_MGMT', 'Gestión de auditorías internas, hallazgos, recomendaciones y evidencias.', '/auditorias', 'search-check', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00'),
('Parámetros del Sistema', 'SYS_CONF', 'Gestión de catálogos, estados, flujos, módulos y parametrización del sistema.', '/configuracion', 'settings', true, 1, '2025-06-24 12:00:00', '2025-06-24 12:00:00');

INSERT INTO acciones_sistema_log (
    id_usuario_accion_log, id_modulo_accion_log, id_accion_sistema_log,
    entidad_referida_accion_log, referencia_accion_log,
    fecha_evento_accion_log, detalles_accion_log,
    created_at, updated_at
) VALUES
(1, 2, 1, 'usuarios', 1, '2025-06-24 08:00:00', 'Usuario creado desde interfaz de administración.', '2025-06-24 08:00:00', '2025-06-24 08:00:00'),
(1, 2, 4, 'usuarios', 1, '2025-06-24 08:02:00', 'Rol asignado: Administrador TIC.', '2025-06-24 08:02:00', '2025-06-24 08:02:00'),
(1, 3, 13, 'obras', 5, '2025-06-24 08:05:00', 'Nueva obra registrada: Colegio Técnico Agropecuario.', '2025-06-24 08:05:00', '2025-06-24 08:05:00'),
(4, 1, 6, 'documentos', 2, '2025-06-24 09:10:00', 'Documento “Acta de Inicio” cargado por Coordinador SST.', '2025-06-24 09:10:00', '2025-06-24 09:10:00'),
(5, 1, 10, 'documentos', 2, '2025-06-24 09:25:00', 'Firma registrada sobre el documento ID 2.', '2025-06-24 09:25:00', '2025-06-24 09:25:00'),
(6, 1, 8, 'documentos', 2, '2025-06-24 09:40:00', 'Documento validado por Interventor con observaciones menores.', '2025-06-24 09:40:00', '2025-06-24 09:40:00'),
(2, 9, 17, 'cronogramas', 1, '2025-06-24 10:00:00', 'Actividad reprogramada por Gerente de Proyecto.', '2025-06-24 10:00:00', '2025-06-24 10:00:00'),
(3, 4, 5, 'usuarios', 14, '2025-06-24 10:15:00', 'Usuario bloqueado manualmente por intentos fallidos.', '2025-06-24 10:15:00', '2025-06-24 10:15:00'),
(7, 5, 12, 'documentos', 3, '2025-06-24 10:30:00', 'Documento rechazado por Coordinador de Calidad.', '2025-06-24 10:30:00', '2025-06-24 10:30:00'),
(8, 8, 15, 'obras', 9, '2025-06-24 11:00:00', 'Cierre administrativo de obra registrado por Director de Obra.', '2025-06-24 11:00:00', '2025-06-24 11:00:00');

INSERT INTO historial_firmas_documento (
    id_documento_historial_firma, id_usuario_ejecutor_historial_firma_documento,
    id_rol_historial_firma_documento, id_firma_documento_historial,
    id_estado_documento_historial, resultado_historial_firma_documento,
    observaciones_historial_firma_documento, fecha_firma_historial_documento,
    ip_origen_historial_firma_documento, created_at, updated_at
) VALUES
(1, 5, 5, 1, 2, 'firmado', 'Documento revisado y conforme con los requisitos del proyecto.', '2025-06-24 08:00:00', '192.168.10.5', '2025-06-24 08:00:00', '2025-06-24 08:00:00'),
(1, 6, 6, 2, 2, 'rechazado', 'Faltan anexos técnicos del componente estructural.', '2025-06-24 08:15:00', '192.168.10.6', '2025-06-24 08:15:00', '2025-06-24 08:15:00'),
(1, 6, 6, 3, 2, 'firmado', 'Se corrigieron los anexos pendientes, firma aceptada.', '2025-06-24 09:30:00', '192.168.10.6', '2025-06-24 09:30:00', '2025-06-24 09:30:00'),
(2, 4, 4, 4, 2, 'firmado', 'Cumple con formato oficial y cronograma definido.', '2025-06-24 10:00:00', '192.168.10.4', '2025-06-24 10:00:00', '2025-06-24 10:00:00'),
(3, 7, 7, 5, 3, 'firmado', 'Validado tras reinspección en campo y checklist SST completo.', '2025-06-24 11:15:00', '192.168.10.7', '2025-06-24 11:15:00', '2025-06-24 11:15:00'),
(3, 8, 8, 6, 3, 'firmado', 'Firma final previa al archivo oficial del documento.', '2025-06-24 11:45:00', '192.168.10.8', '2025-06-24 11:45:00', '2025-06-24 11:45:00');

INSERT INTO integraciones_externas (
    nombre_servicio_integracion_externa, descripcion_integracion_externa,
    url_endpoint_integracion_externa, tipo_servicio_integracion_externa,
    metodo_autenticacion_integracion_externa, integracion_externa_activa,
    id_usuario_responsable_integracion_externa, created_at, updated_at
) VALUES
('Google Drive API', 'Integración con Google Drive para almacenamiento documental desde SGPCMD.', 
 'https://www.googleapis.com/drive/v3/', 'REST', 'OAuth 2.0', true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),

('SECOOP', 'Consulta de información de contratistas en el Sistema Electrónico para la Contratación Pública.', 
 'https://api.secop.gov.co/v1/contratistas', 'REST', 'API Key', true, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),

('SIGP', 'Validación de proyectos registrados en el Sistema de Inversión Pública del DNP.', 
 'https://sigp.dnp.gov.co/api/proyectos', 'REST', 'Token', true, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),

('OpenStreetMap Nominatim', 'Georreferenciación de coordenadas GPS para validación de ubicación de obras.', 
 'https://nominatim.openstreetmap.org/', 'REST', 'Sin autenticación', true, 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),

('Servicio Interno de LDAP', 'Validación de credenciales contra Active Directory institucional.', 
 'https://ldap.construserviciosmd.local/auth', 'REST', 'Basic Auth', true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO bitacora_eventos_obra (
    id_obra_bitacora_evento, id_usuario_registrador_bitacora_eventos_obra,
    id_componente_obra_bitacora_eventos_obra, tipo_bitacora_evento_obra,
    descripcion_bitacora_evento_obra, evidencia_documental_bitacora_eventos_obra,
    observaciones_adicionales_bitacora_eventos_obra, created_at, updated_at
) VALUES
(1, 5, 3, 'climático', 'Lluvias intensas impidieron el acceso a la zona de cimentación.', false, 'Se reprogramará actividad para el día siguiente.', '2025-06-24 08:30:00', '2025-06-24 08:30:00'),
(1, 5, 4, 'avance', 'Se completó el vaciado de placa de entrepiso en el bloque A.', true, 'Se adjuntan fotos y reporte de supervisor.', '2025-06-24 11:00:00', '2025-06-24 11:00:00'),
(2, 6, NULL, 'seguridad', 'Trabajador sin EPP en zona de excavación profunda.', true, 'Se genera reporte SST con evidencia fotográfica.', '2025-06-24 09:15:00', '2025-06-24 09:15:00'),
(3, 7, 6, 'visita', 'Visita técnica del interventor al frente de redes eléctricas.', false, 'No se identificaron novedades.', '2025-06-24 10:45:00', '2025-06-24 10:45:00'),
(4, 8, 7, 'hallazgo', 'Fisuras en muro recién fundido, se requiere verificación estructural.', true, 'Se solicitó informe técnico del ingeniero de calidad.', '2025-06-24 14:10:00', '2025-06-24 14:10:00'),
(5, 4, NULL, 'avance', 'Finalización de actividades de urbanismo fase 1.', false, 'Entregado acta parcial.', '2025-06-24 15:40:00', '2025-06-24 15:40:00');

INSERT INTO cronograma_obra (
    id_obra_cronograma_obra, nombre_actividad_cronograma_obra, descripcion_cronograma_obra,
    fecha_inicio_cronograma_obra, fecha_fin_cronograma_obra, id_usuario_responsable_cronograma_obra,
    porcentaje_avance_cronograma_obra, estado_actividad_cronograma_obra,
    created_at, updated_at
) VALUES
(1, 'Estudios preliminares', 'Actividad programada: estudios preliminares', '2025-07-01', '2025-07-08', 5, 100, 'Finalizada', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Topografía y replanteo', 'Actividad programada: topografía y replanteo', '2025-07-06', '2025-07-16', 5, 0, 'Pendiente', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Movimiento de tierras', 'Actividad programada: movimiento de tierras', '2025-07-11', '2025-07-24', 7, 50, 'En ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Cimentación superficial', 'Actividad programada: cimentación superficial', '2025-07-16', '2025-07-31', 7, 100, 'Finalizada', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Cimentación profunda', 'Actividad programada: cimentación profunda', '2025-07-21', '2025-08-02', 3, 75, 'En ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Estructura metálica', 'Actividad programada: estructura metálica', '2025-07-26', '2025-08-06', 2, 0, 'Pendiente', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Estructura en concreto', 'Actividad programada: estructura en concreto', '2025-07-31', '2025-08-09', 6, 20, 'En ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Instalaciones eléctricas', 'Actividad programada: instalaciones eléctricas', '2025-08-05', '2025-08-14', 3, 100, 'Finalizada', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Instalaciones hidrosanitarias', 'Actividad programada: instalaciones hidrosanitarias', '2025-08-10', '2025-08-24', 5, 0, 'Pendiente', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Instalaciones especiales', 'Actividad programada: instalaciones especiales', '2025-08-15', '2025-08-28', 4, 100, 'Finalizada', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Cubierta y techos', 'Actividad programada: cubierta y techos', '2025-08-20', '2025-09-03', 6, 0, 'Pendiente', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Mampostería y muros internos', 'Actividad programada: mampostería y muros internos', '2025-08-25', '2025-09-06', 4, 75, 'En ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Acabados arquitectónicos', 'Actividad programada: acabados arquitectónicos', '2025-08-30', '2025-09-10', 3, 0, 'Pendiente', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Urbanismo externo', 'Actividad programada: urbanismo externo', '2025-09-04', '2025-09-13', 8, 50, 'En ejecución', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Entrega técnica y cierre', 'Actividad programada: entrega técnica y cierre', '2025-09-09', '2025-09-18', 5, 100, 'Finalizada', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO notificaciones_firma_documento (
    id_documento_notificacion_firma,
    id_usuario_destinatario_notificacion_firma_documento,
    id_firma_documento_notificacion,
    mensaje_notificacion_firma_documento,
    notificacion_firma_documento_leida,
    fecha_envio_notificacion_firma_documento,
    canal_envio_notificacion_firma_documento,
    created_at,
    updated_at
) VALUES
(5, 8, 1, 'Se requiere su firma en el documento asignado (ID firma: 1).', true, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 12, 2, 'Se requiere su firma en el documento asignado (ID firma: 2).', true, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 10, 3, 'Se requiere su firma en el documento asignado (ID firma: 3).', false, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 3, 4, 'Se requiere su firma en el documento asignado (ID firma: 4).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 13, 5, 'Se requiere su firma en el documento asignado (ID firma: 5).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 4, 6, 'Se requiere su firma en el documento asignado (ID firma: 6).', true, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 9, 7, 'Se requiere su firma en el documento asignado (ID firma: 7).', false, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 11, 8, 'Se requiere su firma en el documento asignado (ID firma: 8).', false, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 16, 9, 'Se requiere su firma en el documento asignado (ID firma: 9).', true, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 2, 10, 'Se requiere su firma en el documento asignado (ID firma: 10).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 6, 11, 'Se requiere su firma en el documento asignado (ID firma: 11).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 15, 12, 'Se requiere su firma en el documento asignado (ID firma: 12).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 14, 13, 'Se requiere su firma en el documento asignado (ID firma: 13).', false, '2025-06-24 12:26:55', 'sistema', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 7, 14, 'Se requiere su firma en el documento asignado (ID firma: 14).', false, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 5, 15, 'Se requiere su firma en el documento asignado (ID firma: 15).', true, '2025-06-24 12:26:55', 'correo', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO modulo_accion (
    id_modulo, id_accion_modulo, id_usuario_asignador_modulo_accion,
    modulo_accion_visible_en_ui, modulo_accion_requiere_validacion,
    orden_visual_modulo_accion, fecha_asignacion_modulo_accion,
    created_at, updated_at
) VALUES
(1, 1, 1, true, false, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 2, 1, true, false, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 3, 1, true, true, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 4, 1, true, false, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 5, 1, true, true, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 6, 1, true, false, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 7, 1, true, false, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 8, 1, true, true, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 9, 1, true, true, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 10, 1, true, true, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 11, 1, true, false, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 12, 1, true, false, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 13, 1, true, false, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 14, 1, true, true, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 15, 1, true, false, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO usuarios_asignados_obra (
    id_obra_usuario_asignado, id_usuario_afectado_asignado_obra, id_rol_obra_usuario_asignado,
    fecha_asignacion_usuario_obra, fecha_desvinculacion_usuario_asignado_obra,
    usuario_asignado_obra_activo, created_at, updated_at
) VALUES
(1, 5, 6, '2025-06-01', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 8, 3, '2025-06-01', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 4, 5, '2025-06-02', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 3, 8, '2025-06-02', '2025-06-20', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 7, 6, '2025-06-03', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 2, 5, '2025-06-03', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 10, 7, '2025-06-04', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 9, 6, '2025-06-04', '2025-06-22', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 8, 10, '2025-06-05', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 6, 5, '2025-06-06', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 3, 6, '2025-06-06', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 4, 7, '2025-06-07', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 2, 4, '2025-06-08', '2025-06-20', false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 5, 6, '2025-06-09', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 7, 5, '2025-06-10', NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO categorias_documento (
    nombre_categoria_documento, descripcion_categoria_documento,
    estado_categoria_documento, orden_visual_categoria_documento,
    id_modulo_categoria_documento, created_at, updated_at
) VALUES
('SST', 'Documentos relacionados con seguridad y salud en el trabajo: informes, matrices de riesgo, capacitaciones, entre otros.', 'activa', 1, 5, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Calidad', 'Documentación de gestión de calidad: actas de no conformidad, fichas de inspección, resultados de laboratorio.', 'activa', 2, 6, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Obra', 'Documentación técnica y contractual asociada a las obras: actas de inicio, cronogramas, informes de avance.', 'activa', 3, 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Administrativa', 'Documentos internos de apoyo: oficios, circulares, manuales, comunicaciones organizacionales.', 'activa', 4, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Legal', 'Documentación jurídica: contratos, convenios, demandas, pólizas, conceptos jurídicos.', 'activa', 5, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Ambiental', 'Documentos ambientales requeridos por ley: PMA, licencias, informes de manejo ambiental, mitigación.', 'activa', 6, 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Planeación', 'Documentos de planeación: POA, presupuestos, cronogramas de inversión, indicadores.', 'activa', 7, 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Interventoría', 'Documentos generados o evaluados por interventores: hallazgos, validaciones, reportes.', 'activa', 8, 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Financiera', 'Documentación contable y financiera: facturas, estados financieros, informes presupuestales.', 'activa', 9, 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Compras', 'Documentos relacionados con procesos de compras y contrataciones: cotizaciones, órdenes de compra.', 'activa', 10, 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Archivo', 'Documentos que han sido archivados oficialmente o están sujetos a custodia de largo plazo.', 'activa', 11, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Soporte Técnico', 'Tickets, logs, solicitudes, y manuales generados por el equipo TIC.', 'activa', 12, 5, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Externo', 'Documentos cargados por entidades o usuarios externos con fines de validación o consulta.', 'activa', 13, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Digitalización', 'Documentos escaneados desde físico u organizados por el equipo de digitalización.', 'activa', 14, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Otros', 'Documentación que no encaja en ninguna categoría anterior.', 'activa', 15, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO rol_accion (
    id_rol, id_accion_rol, id_modulo_rol_accion,
    rol_accion_permitido, fecha_asignacion_rol_accion, id_usuario_asignador_rol_accion,
    created_at, updated_at
) VALUES
(1, 1, 1, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Admin TIC puede CREAR_USUARIO en Usuarios
(1, 2, 1, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Admin TIC puede EDITAR_USUARIO en Usuarios
(1, 3, 1, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 13, 2, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),  -- Gerente puede CREAR_OBRA
(3, 6, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Coordinador SST puede CREAR_DOCUMENTO en SST
(4, 7, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Coordinador Calidad puede EDITAR_DOCUMENTO en Calidad
(5, 9, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Interventor puede RECHAZAR_DOCUMENTO en Calidad
(5, 8, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),   -- Interventor puede VALIDAR_DOCUMENTO en Calidad
(6, 17, 4, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),  -- Residente puede SUBIR_EVIDENCIA
(7, 14, 5, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),  -- Asistente puede CERRAR_OBRA
(8, 10, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),  -- Auditor puede FIRMAR_DOCUMENTO
(9, 11, 3, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),  -- Supervisor puede ASIGNAR_DOCUMENTO
(10, 15, 6, TRUE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'), -- Ingeniero puede CREAR_CRONOGRAMA
(11, 12, 3, FALSE, '2025-06-24 12:26:55', 1, '2025-06-24 12:26:55', '2025-06-24 12:26:55'); -- Documentador no puede EXPORTAR_DOCUMENTO (bloqueado)

INSERT INTO versiones_documento (
    id_documento_version_documento, numero_version_documento,
    id_usuario_versionador_documento, descripcion_cambios_version_documento,
    archivo_versionado_documento, es_version_documento_activa,
    created_at, updated_at
) VALUES
(1, '1.0', 5, 'Versión inicial del acta de inicio', 'documentos/acta_inicio_v1.pdf', FALSE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, '1.1', 6, 'Se agregó nota técnica al final del documento', 'documentos/acta_inicio_v1.1.pdf', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, '1.0', 7, 'Versión original del reporte SST', 'documentos/reporte_sst_v1.docx', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, '1.0', 4, 'Memoria de cálculo firmada', 'documentos/memoria_calculo_v1.pdf', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, '1.0', 3, 'Informe técnico semanal', 'documentos/informe_semanal_v1.docx', FALSE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, '1.1', 3, 'Se corrigieron fechas y se adjuntaron nuevas imágenes', 'documentos/informe_semanal_v1.1.docx', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO valores_campos_documento (
    id_documento_valor_campo, id_campo_personalizado_valor_documento,
    id_usuario_registrador_valor_campo_documento, valor_ingresado_campo_documento,
    origen_entrada_valor_campo_documento, created_at, updated_at
) VALUES
(1, 3, 5, 'Centro de Salud Santa Elena', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 4, 5, '2025-07-01', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 5, 5, 'El contratista se compromete a cumplir los plazos estipulados.', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 7, 4, 'INF-TC-045', 'prellenado', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 8, 4, 'Buenas condiciones climáticas', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 10, 8, 'true', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 11, 8, 'Falta señalización perimetral', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 14, 7, 'PAV-FINAL-002.pdf', 'importado', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 15, 7, 'v1.0', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 17, 9, 'Calificación: A', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 20, 10, 'Si aplica', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 21, 6, 'Informe enviado por correo el 22 de junio', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 23, 11, '1.20 metros', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 25, 6, 'Observación crítica corregida', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 26, 7, 'No aplica para esta obra', 'manual', '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO bitacora_eventos (
    id_usuario_ejecutor_bitacora_evento, id_documento_bitacora_evento, id_rol_bitacora_evento,
    modulo_bitacora_evento, tipo_bitacora_evento, descripcion_bitacora_evento,
    ip_origen_bitacora_evento, user_agent_bitacora_evento, fecha_bitacora_evento,
    created_at, updated_at
) VALUES
(1, 1, 1, 'USUARIOS', 'CREACION', 'Creación de nuevo usuario Ana Vargas', '192.168.1.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-24 08:30:00', '2025-06-24 08:30:00', '2025-06-24 08:30:00'),
(2, 2, 2, 'OBRAS', 'CREACION', 'Registro de nueva obra OBRA-2025-1000', '192.168.1.11', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64)', '2025-06-24 08:45:00', '2025-06-24 08:45:00', '2025-06-24 08:45:00'),
(3, 1, 3, 'DOCUMENTOS', 'CARGUE', 'Subida de documento Informe Técnico INF-TC-045', '192.168.1.12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_2_1)', '2025-06-24 09:10:00', '2025-06-24 09:10:00', '2025-06-24 09:10:00'),
(4, 1, 4, 'DOCUMENTOS', 'VALIDACION', 'Validación de Informe INF-TC-045 por Coordinador SST', '192.168.1.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-24 09:20:00', '2025-06-24 09:20:00', '2025-06-24 09:20:00'),
(5, 1, 5, 'DOCUMENTOS', 'FIRMA', 'Firma digital aplicada sobre Informe INF-TC-045', '192.168.1.14', 'Mozilla/5.0 (Android 11; Mobile)', '2025-06-24 09:25:00', '2025-06-24 09:25:00', '2025-06-24 09:25:00'),
(6, 1, 6, 'DOCUMENTOS', 'RECHAZO', 'Rechazo de acta por error en fecha de firma', '192.168.1.15', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4)', '2025-06-24 09:35:00', '2025-06-24 09:35:00', '2025-06-24 09:35:00'),
(7, 1, 7, 'SST', 'REPORTE', 'Creación de informe de condiciones inseguras', '192.168.1.16', 'Mozilla/5.0 (Windows 7; Trident/7.0)', '2025-06-24 10:00:00', '2025-06-24 10:00:00', '2025-06-24 10:00:00'),
(8, 2, 8, 'CALIDAD', 'SUBSANACION', 'Carga de documento subsanado tras hallazgo de calidad', '192.168.1.17', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_2_1)', '2025-06-24 10:15:00', '2025-06-24 10:15:00', '2025-06-24 10:15:00'),
(9, 3, 9, 'OBRAS', 'CAMBIO_ESTADO', 'Cambio de estado de obra a “En ejecución”', '192.168.1.18', 'Mozilla/5.0 (X11; Linux x86_64)', '2025-06-24 10:30:00', '2025-06-24 10:30:00', '2025-06-24 10:30:00'),
(10, 3, 10, 'USUARIOS', 'BLOQUEO', 'Bloqueo automático por intentos fallidos de login', '192.168.1.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-24 10:45:00', '2025-06-24 10:45:00', '2025-06-24 10:45:00'),
(11, 4, 11, 'OBRAS', 'REPROGRAMACION', 'Reprogramación de actividad en cronograma de obra', '192.168.1.20', 'Mozilla/5.0 (Android 10; Mobile)', '2025-06-24 11:00:00', '2025-06-24 11:00:00', '2025-06-24 11:00:00'),
(12, 4, 12, 'DOCUMENTOS', 'VERSIONAMIENTO', 'Creación de nueva versión de documento PAV-FINAL-002', '192.168.1.21', 'Mozilla/5.0 (iPad; CPU OS 14_0)', '2025-06-24 11:15:00', '2025-06-24 11:15:00', '2025-06-24 11:15:00'),
(13, NULL, 13, 'AUDITORIA', 'INICIO_AUDITORIA', 'Inicio de auditoría interna PROC-010', '192.168.1.22', 'Mozilla/5.0 (Windows 11; x64)', '2025-06-24 11:30:00', '2025-06-24 11:30:00', '2025-06-24 11:30:00'),
(14, NULL, 14, 'SST', 'ALERTA_SST', 'Alerta generada por falta de EPP reportado', '192.168.1.23', 'Mozilla/5.0 (Linux; Android 9; SM-G930)', '2025-06-24 11:45:00', '2025-06-24 11:45:00', '2025-06-24 11:45:00'),
(15, 5, 15, 'DOCUMENTOS', 'NOTIFICACION', 'Notificación enviada a Coordinador de Calidad', '192.168.1.24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X)', '2025-06-24 12:00:00', '2025-06-24 12:00:00', '2025-06-24 12:00:00');

INSERT INTO eventos_programados (
    titulo_evento_programado, descripcion_evento_programado, fecha_evento_programado,
    id_usuario_responsable_evento_programado, tipo_evento_programado, estado_evento_programado,
    id_obra_evento_programado, id_proceso_evento_programado, evento_programado_requiere_documento,
    created_at, updated_at
) VALUES
('Auditoría SST OBRA-1001', 'Evaluación del cumplimiento de normas SST en campo', '2025-07-02 09:00:00', 4, 'auditoría', 'pendiente', 2, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Visita Interventoría Técnica', 'Verificación de avance físico estructural', '2025-07-04 10:30:00', 7, 'visita técnica', 'pendiente', 1, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Reunión Comité de Calidad', 'Revisión de hallazgos de obra El Roble', '2025-07-05 14:00:00', 8, 'reunión', 'pendiente', 4, 8, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Validación documentos SST', 'Evaluación documental interna previa a firma', '2025-07-06 11:00:00', 5, 'validación', 'pendiente', NULL, 5, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Socialización proyecto urbano', 'Presentación a comunidad del parque El Carmen', '2025-07-08 16:00:00', 9, 'comunicado', 'pendiente', 7, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Inspección final OBRA-1004', 'Revisión del cumplimiento contractual', '2025-07-09 08:30:00', 6, 'inspección', 'pendiente', 5, 6, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Auditoría interna SIGC', 'Evaluación interna de procedimientos de calidad', '2025-07-10 09:00:00', 4, 'auditoría', 'pendiente', NULL, 3, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Reunión gerencial', 'Avance de ejecución técnica y financiera', '2025-07-11 10:00:00', 1, 'reunión', 'pendiente', NULL, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Supervisión cronograma OBRA-1007', 'Revisión de hitos críticos', '2025-07-12 15:00:00', 2, 'seguimiento', 'pendiente', 8, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Entrega oficial OBRA-1006', 'Evento de entrega técnica y administrativa', '2025-07-13 17:00:00', 3, 'entrega', 'pendiente', 7, NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Mesa técnica PMA', 'Definición de medidas ambientales con autoridad local', '2025-07-14 13:00:00', 10, 'mesa técnica', 'pendiente', 13, 9, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Firma acta reanudación', 'Validación del reinicio formal de obra suspendida', '2025-07-15 10:00:00', 5, 'firma', 'pendiente', 4, NULL, true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Evaluación desempeño contratista', 'Análisis del cumplimiento técnico y administrativo', '2025-07-16 11:30:00', 6, 'evaluación', 'pendiente', 11, 10, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Actualización cronograma OBRA-1009', 'Reprogramación por condiciones climáticas', '2025-07-17 08:45:00', 8, 'planificación', 'pendiente', 10, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
('Capacitación en SIGP', 'Taller sobre nuevos lineamientos institucionales', '2025-07-18 14:00:00', 12, 'formación', 'pendiente', NULL, NULL, false, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO entidades_externas_obra (
    id_obra_entidad_obra, nombre_entidad_obra, nit_entidad_obra,
    tipo_entidad_obra, responsable_contacto_entidad_obra, correo_contacto_entidad_obra,
    telefono_contacto_entidad_obra, entidad_obra_activa, created_at, updated_at
) VALUES
(1, 'ConstruyCol S.A.S.', '900123456-7', 'Contratista', 'Luis Carvajal', 'lcarvajal@construycol.com', '3104567890', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'Intervías Ltda.', '830001122-5', 'Interventoría', 'Marta Peña', 'mpena@intervias.com', '3119876543', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'Consorcio Vial Andino', '901223344-8', 'Contratista', 'Carlos Ordoñez', 'cordonez@andino.com', '3123456789', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'SGI Ingeniería', '900998877-6', 'Interventoría', 'Diana Pulido', 'dpulido@sgi.com', '3141234567', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'InfraObras Colombia', '900456789-2', 'Contratista', 'Jorge Salgado', 'jsalgado@infraobras.com', '3157891234', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'Consorcio Educativo Nacional', '901876543-3', 'Contratista', 'Daniela Ariza', 'dariza@educanacional.com', '3161237890', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'Aguas Técnicas SAS', '900654321-1', 'Proveedor', 'Fabio Romero', 'fromero@aguastecnicas.com', '3179876543', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'Urbaniza Ltda.', '901112233-4', 'Contratista', 'Tatiana Vargas', 'tvargas@urbaniza.com', '3185671230', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'RedControl S.A.S.', '900112233-5', 'Auditoría Externa', 'Manuel Ríos', 'mrios@redcontrol.com', '3198765432', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'Eléctricos del Sur', '901334455-9', 'Proveedor', 'Camila Fernández', 'cfernandez@elsur.com', '3102345678', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'ConstruVía S.A.', '830112233-4', 'Contratista', 'Eduardo Sierra', 'esierra@construvia.com', '3114567890', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 'PlanConsult Ltda.', '900789456-3', 'Consultoría', 'Nancy Muñoz', 'nmunoz@planconsult.com', '3126789012', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 'Obras Sólidas S.A.S.', '901998877-2', 'Contratista', 'Felipe Duarte', 'fduarte@obrasolidas.com', '3134567890', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 'Gestión Ambiental Integral', '900543210-6', 'Proveedor', 'Andrea Paredes', 'aparedes@ambiental.com', '3103214567', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 'Consorcio Parque Verde', '901443322-7', 'Contratista', 'Sandra Melo', 'smelo@parqueverde.com', '3147896543', TRUE, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO adjuntos_documentos (
    id_documento_adjunto_documento, nombre_archivo_adjunto_documento,
    ruta_archivo_adjunto_documento, tipo_mime_adjunto_documento,
    peso_kb_adjunto_documento, fecha_carga_adjunto_documento,
    id_usuario_cargador_adjunto_documento, created_at, updated_at
) VALUES
(1, 'plano_general_obra.pdf', '/documentos/adjuntos/plano_general_obra.pdf', 'application/pdf', 1200, '2025-06-24 12:26:55', 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(1, 'fotografia_excavacion.jpg', '/documentos/adjuntos/fotografia_excavacion.jpg', 'image/jpeg', 850, '2025-06-24 12:26:55', 4, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 'certificado_calidad_concreto.pdf', '/documentos/adjuntos/certificado_calidad_concreto.pdf', 'application/pdf', 300, '2025-06-24 12:26:55', 5, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 'evidencia_firma_acta.jpg', '/documentos/adjuntos/evidencia_firma_acta.jpg', 'image/jpeg', 500, '2025-06-24 12:26:55', 6, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 'listado_personal_obra.xlsx', '/documentos/adjuntos/listado_personal_obra.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 270, '2025-06-24 12:26:55', 7, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 'carta_responsabilidad.pdf', '/documentos/adjuntos/carta_responsabilidad.pdf', 'application/pdf', 640, '2025-06-24 12:26:55', 8, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 'fotos_inspeccion_calidad.zip', '/documentos/adjuntos/fotos_inspeccion_calidad.zip', 'application/zip', 1520, '2025-06-24 12:26:55', 9, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 'manual_instalacion_sistema.pdf', '/documentos/adjuntos/manual_instalacion_sistema.pdf', 'application/pdf', 1950, '2025-06-24 12:26:55', 10, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 'evidencia_sst_acta_firmada.jpg', '/documentos/adjuntos/evidencia_sst_acta_firmada.jpg', 'image/jpeg', 720, '2025-06-24 12:26:55', 11, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 'formato_ambiental.docx', '/documentos/adjuntos/formato_ambiental.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 410, '2025-06-24 12:26:55', 12, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 'evidencia_mantenimiento.png', '/documentos/adjuntos/evidencia_mantenimiento.png', 'image/png', 880, '2025-06-24 12:26:55', 13, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 'certificado_ingenieria_suelos.pdf', '/documentos/adjuntos/certificado_ingenieria_suelos.pdf', 'application/pdf', 950, '2025-06-24 12:26:55', 14, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 'foto_avance_septiembre.jpg', '/documentos/adjuntos/foto_avance_septiembre.jpg', 'image/jpeg', 780, '2025-06-24 12:26:55', 15, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 'evidencia_riesgo_ssma.mp4', '/documentos/adjuntos/evidencia_riesgo_ssma.mp4', 'video/mp4', 29000, '2025-06-24 12:26:55', 2, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 'bitacora_climatica_mensual.xlsx', '/documentos/adjuntos/bitacora_climatica_mensual.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 260, '2025-06-24 12:26:55', 3, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO permisos_por_rol (
    id_rol_permiso_asignado, id_accion_permiso_rol,
    estado_permiso_rol, id_estado_usuario_permiso_rol,
    condicion_logica_permiso_rol, created_at, updated_at
) VALUES
(1, 1, 'activo', 1, 'usuario_bloqueado = false AND intentos_fallidos_usuario < 5', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 2, 'activo', 1, 'usuario_bloqueado = false', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(3, 3, 'activo', 2, 'usuario.estado = "Activo"', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 4, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 5, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 6, 'activo', 2, 'usuario.tieneFirmaDigital = true', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(7, 7, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(8, 8, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(9, 9, 'activo', 2, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(10, 10, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(11, 11, 'activo', 2, 'usuario.estado = "Activo"', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(12, 12, 'activo', 1, 'usuario.rol IN ("Supervisor", "Interventor")', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(13, 3, 'activo', 1, 'usuario.id IN (SELECT id_usuario FROM usuarios WHERE dominio_validado_usuario = true)', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(14, 4, 'activo', 4, 'usuario.intentos_fallidos_usuario < 3', '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(15, 1, 'activo', 1, NULL, '2025-06-24 12:26:55', '2025-06-24 12:26:55');

INSERT INTO dependencias_funcionales (
    id_modulo_origen_dependencia_funcional, id_modulo_destino_dependencia_funcional,
    tipo_origen_dependencia_funcional, origen_dependencia_funcional,
    tipo_destino_dependencia_funcional, destino_dependencia_funcional,
    condicion_logica_dependencia_funcional, mensaje_bloqueo_dependencia_funcional,
    dependencia_funcional_activa, created_at, updated_at
) VALUES
(3, 5, 'documentos', 42, 'firmas_documento', 101, "estado = 'Aprobado'", 'No se puede firmar el documento hasta que esté aprobado.', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(6, 7, 'auditorias_internas', 12, 'reportes_diarios_obra', 88, "estado_auditoria_interna = 'Finalizada'", 'Debe finalizar la auditoría antes de habilitar el reporte.', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(2, 3, 'obras', 5, 'documentos', 72, "estado_obra = 'Cerrada'", 'No puede registrar nuevos documentos en una obra cerrada.', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(5, 6, 'procesos', 3, 'auditorias_internas', 21, "activo = true", 'El proceso asociado está inactivo. Active el proceso para continuar.', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55'),
(4, 5, 'firmas_documento', 102, 'notificaciones_firma_documento', 203, "resultado = 'firmado'", 'No se puede notificar si la firma no ha sido ejecutada.', true, '2025-06-24 12:26:55', '2025-06-24 12:26:55');
