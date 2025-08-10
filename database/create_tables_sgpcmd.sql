CREATE DATABASE sgpcmd;

USE sgpcmd;

CREATE TABLE roles_obra (
    id_rol_obra INT PRIMARY KEY AUTO_INCREMENT,                       -- ID del rol funcional dentro de la obra
    nombre_rol_obra VARCHAR(100) NOT NULL UNIQUE,                     -- Nombre del rol (ej: Interventor, Residente)
    descripcion_rol_obra VARCHAR(255),                                -- Alcance funcional
    firma_requerida_rol_obra BOOLEAN DEFAULT FALSE,                   -- ¿Este rol firma documentos clave?
    recibe_alertas_rol_obra BOOLEAN DEFAULT TRUE,                     -- ¿Recibe notificaciones del sistema?
    rol_obra_activo BOOLEAN DEFAULT TRUE,                             -- Control de visibilidad futura

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE estado_obra (
    id_estado_obra INT PRIMARY KEY AUTO_INCREMENT,                       -- Identificador del estado de obra
    nombre_estado_obra VARCHAR(100) NOT NULL UNIQUE,                     -- Nombre del estado (ej: En ejecución, Finalizada)
    descripcion_estado_obra VARCHAR(255),                                -- Descripción opcional
    es_final_estado_obra BOOLEAN DEFAULT FALSE,                          -- Si representa un estado de cierre
    estado_obra_activa BOOLEAN DEFAULT TRUE,                             -- Si sigue disponible para uso futuro

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tipos_obra (
    id_tipo_obra INT PRIMARY KEY AUTO_INCREMENT,                       -- Identificador único del tipo de obra
    nombre_tipo_obra VARCHAR(100) NOT NULL UNIQUE,                     -- Nombre del tipo de obra (ej: Vial, Edificación)
    descripcion_tipo_obra VARCHAR(255),                                -- Explicación adicional
    tipo_obra_activa BOOLEAN DEFAULT TRUE,                             -- Control de visibilidad para nuevas obras

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tipos_documento_identidad (
    id_tipo_documento_identidad INT PRIMARY KEY AUTO_INCREMENT,
    codigo_documento_identidad VARCHAR(5) UNIQUE NOT NULL,         -- Ej: 'CC', 'CE'
    descripcion_documento_identidad VARCHAR(100) NOT NULL,         -- Ej: 'Cédula de ciudadanía'

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT,                            -- Identificador único del rol
    nombre_rol VARCHAR(100) NOT NULL UNIQUE,                          -- Nombre del rol visible en el sistema
    codigo_rol VARCHAR(20) NOT NULL UNIQUE,                           -- Código interno del rol (ej. "INT", "ADMIN")
    descripcion_rol TEXT,                                             -- Explicación funcional del rol
    jerarquia_rol SMALLINT NOT NULL DEFAULT 0,                        -- Nivel jerárquico (0 mayor autoridad)
    rol_activo BOOLEAN DEFAULT TRUE,                                  -- Si el rol está habilitado
    id_usuario_creador_rol INT,                                       -- Usuario que creó este rol

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                -- Fecha de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de modificación
);

CREATE TABLE acciones_sistema (
    id_accion_sistema INT PRIMARY KEY AUTO_INCREMENT,                -- Identificador único de la acción del sistema
    codigo_accion_sistema VARCHAR(30) UNIQUE NOT NULL,               -- Código estandarizado (ej: CREAR_DOC, VALIDAR, BLOQUEAR_USUARIO)
    nombre_accion_sistema VARCHAR(100) NOT NULL,                     -- Nombre legible (ej: “Crear documento”, “Firmar”)
    descripcion_accion_sistema TEXT,                                 -- Descripción detallada de alcance y uso
    modulo_asociado_accion_sistema VARCHAR(50),                      -- Módulo funcional (ej: “Usuarios”, “Documentos”)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE estado_usuario (
    id_estado_usuario INT PRIMARY KEY AUTO_INCREMENT,                     -- Identificador único del estado
    nombre_estado_usuario VARCHAR(50) NOT NULL UNIQUE,                    -- Nombre del estado (ej. "Activo")
    codigo_estado_usuario VARCHAR(20) NOT NULL UNIQUE,                    -- Código del estado (ej. "ACT")
    descripcion_estado_usuario TEXT,                                      -- Explicación funcional del estado
    es_acceso_habil_estado_usuario BOOLEAN NOT NULL DEFAULT TRUE,         -- Si permite iniciar sesión
    id_usuario_creador_estado_usuario INT,                                -- Usuario que creó este estado

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                -- Fecha de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de modificación
);

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único del usuario dentro del sistema
    nombre_usuario VARCHAR(100) NOT NULL,                                              -- Nombre completo del usuario
    apellido_usuario VARCHAR(100) NOT NULL,                                            -- Apellido completo del usuario
    id_tipo_documento_identidad_usuario INT NOT NULL,                                  -- FK a tipos_documento_identidad(id_tipo_documento_identidad)
    numero_documento_usuario VARCHAR(30) NOT NULL,                                     -- Número de documento de identidad del usuario
    tipo_usuario ENUM('interno', 'externo') NOT NULL,                                  -- Clasificación del usuario (planta o externo)
    correo_usuario VARCHAR(150) NOT NULL UNIQUE,                                       -- Correo institucional del usuario
    dominio_validado_usuario BOOLEAN DEFAULT FALSE,                                    -- Marca si el dominio del correo ha sido aprobado por el sistema
    telefono_usuario VARCHAR(10),                                                      -- Teléfono de contacto del usuario
    id_rol_usuario INT NOT NULL,                                                       -- Llave foránea al rol asignado al usuario
    id_estado_usuario INT NOT NULL,                                                    -- Llave foránea al estado actual del usuario
    id_usuario_creador INT,                                                            -- Usuario que registró este usuario en el sistema
    contrasena_hash_usuario TEXT NOT NULL,                                             -- Contraseña cifrada del usuario
    ultima_conexion_usuario TIMESTAMP,                                                 -- Fecha y hora de la última conexión
    direccion_ip_reg_usuario VARCHAR(45),                                              -- Dirección IP desde la cual fue registrado el usuario
    requiere_cambio_pi_usuario BOOLEAN DEFAULT TRUE,                                   -- Indica si el usuario debe cambiar su contraseña al primer ingreso
    intentos_fallidos_usuario INT DEFAULT 0 NOT NULL,                                  -- Contador de intentos fallidos de login
    usuario_bloqueado BOOLEAN DEFAULT FALSE,                                           -- Marca si el usuario está bloqueado actualmente
    id_usuario_generador_bloqueo INT,                                                  -- Llave foránea al usuario que aplicó el bloqueo (manual o automático)
    motivo_bloqueo_usuario TEXT,                                                       -- Justificación o motivo del bloqueo aplicado

    UNIQUE(id_tipo_documento_identidad_usuario, numero_documento_usuario),


    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación técnica del registro (trazabilidad)
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última actualización del registro
);

CREATE TABLE tipos_documento (
    id_tipo_documento INT PRIMARY KEY AUTO_INCREMENT,                                  -- Identificador único del tipo documental
    nombre_tipo_documento VARCHAR(100) NOT NULL UNIQUE,                                -- Nombre funcional del tipo (ej. Acta, Informe, Contrato)
    codigo_tipo_documento VARCHAR(20) NOT NULL UNIQUE,                                 -- Código técnico (ej. ACTA, INFO, CNTR, FORM)
    tipo_documento_requiere_validacion BOOLEAN DEFAULT TRUE,                           -- Define si requiere aprobación jerárquica
    tipo_documento_requiere_firma BOOLEAN DEFAULT FALSE,                               -- Si este tipo de documento requiere firma (manual o digital)
    tipo_documento_visible_por_todos BOOLEAN DEFAULT FALSE,                            -- Si todos los usuarios pueden ver este tipo (ej. manual general)
    modulo_asociado_tipo_documento VARCHAR(50),                                        -- Área funcional que lo utiliza principalmente
    descripcion_tipo_documento TEXT,                                                   -- Explicación extendida o notas sobre el tipo
    tipo_documento_activo BOOLEAN DEFAULT TRUE,                                        -- Si el tipo está habilitado para selección
    id_usuario_creador_tipo_documento INT,                                             -- Usuario que definió este tipo

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                      -- Registro de cuándo se creó este tipo
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Última actualización del tipo documental
);

CREATE TABLE plantillas_documento (
    id_plantilla_documento INT PRIMARY KEY AUTO_INCREMENT,                                   -- Identificador único de la plantilla
    nombre_plantilla_documento VARCHAR(100) NOT NULL UNIQUE,                                 -- Nombre funcional de la plantilla (ej. “Acta de visita obra v1”)
    id_tipo_documento_plantilla_documento INT NOT NULL,                                      -- Tipo de documento al que pertenece esta plantilla
    version_plantilla_documento VARCHAR(20) DEFAULT '1.0',                                   -- Versión de la plantilla
    plantilla_documento_archivo_base VARCHAR(255),                                           -- Archivo de plantilla en formato físico (opcional)
    plantilla_documento_editable_web BOOLEAN DEFAULT TRUE,                                   -- Indica si la plantilla puede ser editada desde la interfaz web
    campos_dinamicos_plantilla_documento BOOLEAN DEFAULT FALSE,                              -- Indica si la plantilla está asociada a campos personalizados
    observaciones_plantilla_documento TEXT,                                                  -- Comentarios administrativos, técnicos o históricos (opcional)
    estado_plantilla_documento ENUM('activa', 'inactiva') DEFAULT 'activa',                  -- Control de uso sin eliminación

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                       -- Fecha de creación de la plantilla
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación de la plantilla
);

CREATE TABLE obras (
    id_obra INT PRIMARY KEY AUTO_INCREMENT,                                             -- Identificador único de la obra
    nombre_obra VARCHAR(255) NOT NULL,                                                  -- Nombre oficial completo de la obra
    codigo_interno_obra VARCHAR(50) NOT NULL UNIQUE,                                    -- Código de control interno institucional o contractual
    descripcion_obra TEXT,                                                              -- Descripción general del objeto y alcance de la obra (opcional)
    fecha_inicio_planeada_obra DATE NOT NULL,                                           -- Fecha planificada de inicio según cronograma contractual
    fecha_fin_planeada_obra DATE NOT NULL,                                              -- Fecha planificada de finalización
    fecha_inicio_real_obra DATE,                                                        -- Fecha real de inicio de actividades (opcional)
    fecha_fin_real_obra DATE,                                                           -- Fecha real de finalización técnica (opcional)
    id_estado_obra INT NOT NULL,                                                        -- Estado actual del ciclo de vida de la obra
    id_tipo_obra INT NOT NULL,                                                          -- Clasificación general de la obra (vial, hidráulica, edificaciones, etc.)
    presupuesto_asignado_obra BIGINT DEFAULT 0,                                         -- Valor en pesos colombianos (sin decimales), conforme a normas nacionales
    entidad_contratante_obra VARCHAR(255),                                              -- Nombre de la entidad contratante (opcional)
    contratista_principal_obra VARCHAR(255),                                            -- Nombre del contratista o consorcio ejecutor principal (opcional)
    contrato_principal_obra VARCHAR(100),                                               -- Número del contrato principal asociado a la obra (opcional)
    ruta_acta_inicio_obra VARCHAR(255),                                                 -- Ruta digital del archivo del acta de inicio (formato físico externo o S3) (opc)
    obra_visible_en_portal BOOLEAN DEFAULT TRUE,                                        -- Si es TRUE, se muestra en el portal público del sistema

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                 -- Fecha de creación del registro para control y auditoría
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP      -- Fecha de última modificación del registro
);

CREATE TABLE frentes_obra (
    id_frente_obra INT PRIMARY KEY AUTO_INCREMENT,                                              -- Identificador único del frente dentro del sistema
    id_obra_frente_obra INT NOT NULL,                                                           -- Relación directa a la obra en la que se encuentra
    nombre_frente_obra VARCHAR(100) NOT NULL UNIQUE,                                            -- Nombre del frente (ej. Torre A, Excavación Norte)
    descripcion_frente_obra TEXT,                                                               -- Detalles adicionales sobre ubicación o actividad (opcional)
    estado_frente_obra ENUM('activo', 'inactivo', 'cerrado', 'suspendido') DEFAULT 'activo',    -- Estado del frente: activo, inactivo, cerrado, suspendido

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Registro de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Registro de última modificación
);

CREATE TABLE acciones (
    id_accion INT PRIMARY KEY AUTO_INCREMENT,                                    -- Identificador único de la acción
    nombre_accion VARCHAR(100) NOT NULL UNIQUE,                                  -- Nombre de la acción visible
    codigo_accion VARCHAR(30) NOT NULL UNIQUE,                                   -- Código interno (ej. "REG_DOC")
    descripcion_accion TEXT,                                                     -- Explicación funcional de la acción
    es_publica_accion BOOLEAN DEFAULT FALSE,                                     -- Si no requiere autenticación
    accion_requiere_registro BOOLEAN DEFAULT TRUE,                               -- Si se debe registrar en bitácora
    id_usuario_creador_accion INT,                                               -- Usuario que definió esta acción

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                -- Fecha de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de modificación
);

CREATE TABLE estado_documento (
    id_estado_documento INT PRIMARY KEY AUTO_INCREMENT,                           -- Identificador único del estado del documento
    nombre_estado_documento VARCHAR(50) NOT NULL UNIQUE,                          -- Nombre visible del estado (ej. Pendiente, Aprobado, Rechazado)
    codigo_estado_documento VARCHAR(20) NOT NULL UNIQUE,                          -- Código técnico del estado (ej. PEND, APRV, RJCT)
    descripcion_estado_documento TEXT,                                            -- Explicación detallada del significado y comportamiento del estado
    es_final_estado_documento BOOLEAN DEFAULT FALSE,                              -- Indica si es un estado terminal (ej. Aprobado, Rechazado)
    estado_documento_editable BOOLEAN DEFAULT FALSE,                              -- Si el documento puede ser editado en este estado
    estado_documento_requiere_validacion BOOLEAN DEFAULT TRUE,                    -- Si el estado requiere haber pasado por validación o revisión previa
    id_usuario_creador_estado_documento INT,                                      -- Usuario administrador que creó el estado

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                      -- Fecha de registro del estado
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Última actualización del estado
);

CREATE TABLE campos_personalizados (
    id_campo_personalizado INT PRIMARY KEY AUTO_INCREMENT,                                                     -- Identificador único del campo personalizado
    id_plantilla_documento_campo_personalizado INT NOT NULL,                                                   -- Plantilla documental a la que pertenece el campo
    nombre_campo_personalizado VARCHAR(100) NOT NULL,                                                          -- Nombre funcional del campo (ej. “Responsable”, “Código obra”)
    tipo_dato_campo_personalizado ENUM('texto', 'número', 'fecha', 'booleano', 'lista', 'archivo') NOT NULL,   -- Tipo de dato esperado
    campo_personalizado_obligatorio BOOLEAN DEFAULT FALSE,                                                     -- Indica si el campo es obligatorio
    valor_predefinido_campo_personalizado VARCHAR(255),                                                        -- Valor por defecto sugerido (opcional)
    opciones_lista_campo_personalizado TEXT,                                                                   -- Lista de valores si tipo_dato = 'lista' (opcional)
    orden_visual_campo_personalizado INT,                                                                      -- Control del orden de visualización del campo en el formulario
    campo_personalizado_visible_para_roles TEXT,                                                               -- Lista de roles que pueden visualizar el campo (opcional)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                       -- Fecha de creación del campo
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del campo
);

CREATE TABLE procesos (
    id_proceso INT PRIMARY KEY AUTO_INCREMENT,                                               -- Identificador único del proceso
    codigo_proceso VARCHAR(20) UNIQUE NOT NULL,                                              -- Código corto para el proceso (ej. "PROC-001")
    nombre_proceso VARCHAR(100) NOT NULL,                                                    -- Nombre funcional o descriptivo del proceso
    descripcion_proceso TEXT,                                                                -- Descripción funcional del proceso (opcional)
    tipo_proceso ENUM('estratégico', 'misional', 'apoyo', 'operativo') DEFAULT 'operativo',  -- Clasificación del proceso de valores permitidos
    id_proceso_padre INT,                                                                    -- FK autorreferencial al proceso principal (si es subproceso)
    id_usuario_responsable_proceso INT,                                                      -- Usuario asignado como responsable del proceso
    activo BOOLEAN DEFAULT TRUE,                                                             -- Estado de vigencia del proceso

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                   -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP        -- Fecha de última modificación del registro
);

CREATE TABLE componentes_obra (
    id_componente_obra INT PRIMARY KEY AUTO_INCREMENT,                                          -- Identificador único del componente
    id_obra_componente_obra INT NOT NULL,                                                       -- Obra a la cual pertenece este componente
    nombre_componente_obra VARCHAR(150) NOT NULL,                                               -- Nombre del componente (ej: Torre A, Redes Sanitarias)
    descripcion_componente_obra TEXT,                                                           -- Detalles técnicos o administrativos del componente (opcional)
    componente_obra_activo BOOLEAN DEFAULT TRUE,                                                -- Permite desactivar componentes obsoletos o cancelados

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del componente
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última modificación del componente
);

CREATE TABLE documentos (
    id_documento INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único del documento en el sistema
    id_usuario_creador_documento INT NOT NULL,                                           -- Usuario que cargó originalmente el documento al sistema
    id_tipo_documento INT NOT NULL,                                                      -- Tipo documental del archivo (Acta, Informe, Formato, etc.)
    id_estado_documento INT NOT NULL,                                                    -- Estado actual del documento (ej. En revisión, Aprobado, Rechazado)
    id_usuario_generador_documento INT NOT NULL,                                         -- Usuario que generó el registro en sistema (puede coincidir o no con el creador original)
    nombre_archivo_documento VARCHAR(255) NOT NULL,                                      -- Nombre original o generado del archivo documental
    ruta_archivo_documento TEXT NOT NULL,                                                -- Ruta absoluta o relativa al almacenamiento (s3, servidor local, etc.)
    version_documento VARCHAR(20) DEFAULT '1.0',                                         -- Versión inicial o posterior del documento
    fecha_creacion_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                        -- Fecha y hora del registro documental en sistema
    fecha_vencimiento_documento DATE,                                                    -- Fecha límite de validez o vigencia (puede ser nula si no aplica)
    observaciones_documento TEXT,                                                        -- Comentarios internos agregados por el autor o evaluadores
    requiere_aprobacion_documento BOOLEAN DEFAULT TRUE,                                  -- Indicador de si el documento requiere ser aprobado por otro rol

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación técnica para auditoría
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última modificación técnica
);

CREATE TABLE bloqueos_usuarios (
    id_bloqueo_usuario INT PRIMARY KEY AUTO_INCREMENT,                                             -- Identificador único del evento de bloqueo
    id_usuario_afectado_bloqueo_usuario INT NOT NULL,                                              -- Usuario afectado por el bloqueo
    tipo_bloqueo_usuario ENUM('manual', 'automático', 'seguridad', 'sistema') NOT NULL,            -- Clasificación del tipo de bloqueo
    motivo_bloqueo_usuario TEXT NOT NULL,                                                          -- Justificación técnica, documental o de seguridad del bloqueo
    fecha_bloqueo_usuario DATETIME DEFAULT CURRENT_TIMESTAMP,                                      -- Fecha y hora de aplicación del bloqueo
    id_usuario_origen_bloqueo_usuario INT NOT NULL,                                                -- Usuario que originó el bloqueo (o ID del sistema)
    duracion_minutos_bloqueo_usuario INT,                                                          -- Duración del bloqueo si fue programado (opcional)
    fecha_expiracion_bloqueo_usuario DATETIME,                                                     -- Fecha en la que expira automáticamente el bloqueo (opcional)
    bloqueo_usuario_resuelto BOOLEAN DEFAULT FALSE,                                                -- Estado actual del bloqueo (activo o resuelto)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                 -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP     -- Fecha de última modificación del registro
);

CREATE TABLE ubicaciones_obra (
    id_ubicacion_obra INT PRIMARY KEY AUTO_INCREMENT,                                          -- Identificador único de la ubicación
    id_obra_ubicacion_obra INT NOT NULL,                                                       -- FK a la obra que se localiza
    departamento_ubicacion_obra VARCHAR(100) NOT NULL,                                         -- Departamento colombiano donde se ejecuta la obra
    municipio_ubicacion_obra VARCHAR(100) NOT NULL,                                            -- Municipio o ciudad
    ubicacion_obra_direccion_exacta VARCHAR(255),                                              -- Calle, carrera, vereda o descripción específica de acceso (opcional)
    ubicacion_obra_coordenada_latitud DECIMAL(10,8),                                           -- Coordenada GPS de latitud (WGS84) (opcional)
    ubicacion_obra_coordenada_longitud DECIMAL(11,8),                                          -- Coordenada GPS de longitud (WGS84) (opcional)
    ubicacion_obra_punto_referencia VARCHAR(255),                                              -- Punto cercano o zona conocida para identificación rápida (opcional)
    zona_ubicacion_obra VARCHAR(50),                                                           -- Norte, sur, centro, rural, urbana, etc. según segmentación del proyecto (opcional)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última modificación del registro
);

CREATE TABLE notificaciones_sistema (
    id_notificacion_sistema INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único de la notificación
    id_usuario_receptor_notificacion_sistema INT NOT NULL,                                         -- Usuario que recibe la notificación
    titulo_notificacion_sistema VARCHAR(100) NOT NULL,                                             -- Título corto visible en el encabezado de la notificación
    mensaje_notificacion_sistema TEXT NOT NULL,                                                    -- Contenido detallado del mensaje
    notificacion_sistema_leida BOOLEAN DEFAULT FALSE,                                              -- Indica si el usuario ya visualizó o marcó como leída la notificación
    tipo_notificacion_sistema VARCHAR(30) NOT NULL,                                                -- Categoría funcional para organización y filtrado
    enlace_accion_notificacion_sistema VARCHAR(255),                                               -- URL interna del sistema para redirigir al módulo afectado (opcional)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Registro de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Registro de última modificación
);

CREATE TABLE documentos_obligatorios_por_rol (
    id_documento_obligatorio_rol INT PRIMARY KEY AUTO_INCREMENT,                  -- Identificador único del requerimiento documental por rol
    id_tipo_documento_obligatorio_rol INT NOT NULL,                              -- Tipo de documento exigido (ej. Acta de ingreso, Plan de calidad)
    id_rol_responsable_documento_obligatorio INT NOT NULL,                        -- Rol responsable de cargar el documento
    id_estado_usuario_obligatorio_documento_rol INT,                              -- Estado del usuario desde el cual el documento se vuelve obligatorio
    descripcion_documento_obligatorio_rol TEXT,                                   -- Detalle del motivo o condición que obliga el cargue del documento

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP     -- Fecha de última modificación del registro
);

CREATE TABLE comentarios_documento (
    id_comentario_documento INT PRIMARY KEY AUTO_INCREMENT,                                              -- Identificador único del comentario
    id_documento_comentario_documento INT NOT NULL,                                                      -- Documento al que pertenece el comentario
    id_usuario_autor_comentario_documento INT NOT NULL,                                                  -- Usuario que realiza el comentario
    comentario_documento TEXT NOT NULL,                                                                  -- Contenido textual del comentario u observación
    tipo_comentario_documento ENUM('informativo', 'observación', 'rechazo', 'revisión') NOT NULL,        -- Clasificación funcional del comentario
    comentario_documento_visible_para_firmantes BOOLEAN DEFAULT TRUE,                                    -- Indica si el comentario es visible para los firmantes

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del registro
);

CREATE TABLE tokens_recuperacion (
    id_token_recuperacion INT PRIMARY KEY AUTO_INCREMENT,                                   -- Identificador interno único del token
    id_usuario_generador_token_recuperacion INT NOT NULL,                                   -- Usuario al que se le genera el token (FK obligatoria)
    valor_token_recuperacion VARCHAR(255) UNIQUE NOT NULL,                                  -- Valor encriptado del token de recuperación
    expiracion_token_recuperacion DATETIME NOT NULL,                                        -- Fecha y hora máxima para que el token sea válido
    token_recuperacion_usado BOOLEAN DEFAULT FALSE,                                         -- Indica si el token ya fue utilizado

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                       -- Registro de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Registro de última modificación
);

CREATE TABLE requerimientos_firma_documento (
    id_requerimiento_firma INT PRIMARY KEY AUTO_INCREMENT,                                    -- Identificador único del requerimiento de firma
    id_tipo_documento_requerimiento_firma INT NOT NULL,                                       -- Tipo de documento al que se aplica esta regla de firma
    id_rol_responsable_requerimiento_firma INT NOT NULL,                                      -- Rol responsable de firmar este tipo de documento
    orden_requerimiento_firma INT NOT NULL,                                                   -- Orden secuencial en el flujo de firmas (1 = primera, 2 = segunda, etc.)
    requerimiento_firma_obligatoria BOOLEAN DEFAULT TRUE,                                     -- Indica si la firma es obligatoria para validar el documento
    id_estado_documento_requerimiento_firma INT,                                              -- Estado desde el cual puede activarse la firma (opcional)
    condicion_aplicacion_requerimiento_firma TEXT,                                            -- Condición lógica que habilita la aplicación de la firma (opcional)

    UNIQUE(id_tipo_documento_requerimiento_firma, id_rol_responsable_requerimiento_firma, orden_requerimiento_firma),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del requerimiento (auditoría)
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última actualización del registro
);

CREATE TABLE flujos_documentales (
    id_flujo_documental INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único del flujo documental
    nombre_flujo_documental VARCHAR(100) UNIQUE NOT NULL,                                       -- Nombre del flujo (ej. “Flujo de firmas de calidad SST”)
    descripcion_flujo_documental TEXT,                                                          -- Descripción extendida sobre el propósito o condiciones del flujo
    id_tipo_documento_flujo_documental INT NOT NULL,                                            -- Documento sobre el cual aplica el flujo definido
    id_rol_flujo_documental INT NOT NULL,                                                       -- Rol que inicia o ejecuta este flujo (ej. Coordinador SST)
    id_estado_documento_inicio_flujo_documental INT NOT NULL,                                   -- Estado con el que se crea el documento bajo este flujo (ej. "En revisión")
    id_estado_documento_final_flujo_documental INT NOT NULL,                                     -- Estado final esperado al completar el flujo (ej. "Archivado")
    flujo_documental_requiere_firma_digital BOOLEAN DEFAULT TRUE,                               -- Indica si el flujo requiere firma electrónica formal
    vencimiento_dias_flujo_documental INT,                                                      -- Número de días sin avance tras los cuales el flujo se considera vencido (opcional)
    flujo_documental_activo BOOLEAN DEFAULT TRUE,                                               -- Habilita o desactiva el flujo en el sistema

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación técnica
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Última modificación técnica
);

CREATE TABLE reportes_diarios_obra (
    id_reporte_diario_obra INT PRIMARY KEY AUTO_INCREMENT,                                     -- Identificador único del reporte
    id_obra_reporte_diario_obra INT NOT NULL,                                                  -- Obra a la cual pertenece el reporte diario
    id_usuario_responsable_reporte_diario_obra INT NOT NULL,                                    -- Usuario que realiza el reporte (Residente, Coordinador, etc.)
    fecha_reporte_diario_obra DATE NOT NULL,                                                   -- Fecha del contenido reportado (no necesariamente la de carga)
    observaciones_reporte_diario_obra TEXT NOT NULL,                                           -- Observaciones técnicas, operativas o climáticas del día

    UNIQUE(id_obra_reporte_diario_obra, id_usuario_responsable_reporte_diario_obra, fecha_reporte_diario_obra),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                 -- Fecha y hora de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP      -- Fecha y hora de la última modificación del registro
);

CREATE TABLE historial_estados_documento (
    id_historial_estado_documento INT PRIMARY KEY AUTO_INCREMENT,                                   -- Identificador único del cambio de estado registrado
    id_documento_historial_estado INT NOT NULL,                                                     -- Documento al que pertenece el cambio de estado
    id_estado_documento_historial_anterior INT,                                                     -- Estado previo del documento (puede ser NULL si es el primero)
    id_estado_documento_historial_nuevo INT NOT NULL,                                               -- Estado al que transiciona el documento
    id_usuario_ejecutor_historial_estado_documento INT NOT NULL,                                    -- Usuario que ejecutó el cambio
    id_rol_historial_estado_documento INT NOT NULL,                                                 -- Rol que tenía el usuario al momento del cambio
    motivo_cambio_historial_estado_documento TEXT,                                                  -- Justificación técnica o funcional del cambio de estado
    fecha_cambio_historial_estado_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                    -- Fecha y hora exacta en que ocurrió el cambio
    ip_origen_historial_estado_documento VARCHAR(45),                                               -- Dirección IP (IPv4 o IPv6) del usuario al momento del cambio
    user_agent_historial_estado_documento TEXT,                                                     -- Información del navegador, dispositivo o sistema operativo

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                      -- Fecha y hora de creación del registro
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha y hora de última modificación
);

CREATE TABLE firmas_documento (
    id_firma_documento INT PRIMARY KEY AUTO_INCREMENT,                                   -- Identificador único de la firma registrada
    id_documento_firma INT NOT NULL,                                                     -- Documento sobre el cual se aplica la firma
    id_usuario_responsable_firma_documento INT NOT NULL,                                 -- Usuario que realiza la firma
    id_rol_responsable_firma_documento INT NOT NULL,                                     -- Rol con el que el usuario realiza la firma
    tipo_firma_documento VARCHAR(20) NOT NULL,                                           -- Tipo de firma aplicada: manual, digital, por código u otro medio
    fecha_firma_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                           -- Fecha y hora exacta en la que se registró la firma
    ip_origen_firma_documento VARCHAR(45),                                               -- Dirección IP del dispositivo desde donde se ejecutó la firma
    user_agent_firma_documento TEXT,                                                     -- Navegador, sistema operativo y entorno técnico del usuario
    observaciones_firma_documento TEXT,                                                  -- Comentarios técnicos, anotaciones o notas asociadas a la firma
    archivo_firma_documento VARCHAR(255),                                                -- Ruta del archivo escaneado de la firma, si aplica (firma manual)

    UNIQUE(id_documento_firma, id_usuario_responsable_firma_documento, id_rol_responsable_firma_documento),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                               -- Fecha de creación del registro (auditoría)
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP    -- Fecha de última modificación del registro
);


CREATE TABLE auditorias_internas (
    id_auditoria_interna INT PRIMARY KEY AUTO_INCREMENT,                                                           -- Identificador único de la auditoría interna
    codigo_auditoria_interna VARCHAR(20) UNIQUE NOT NULL,                                                          -- Código formal de la auditoría (ej. AUD-2025-01)
    nombre_auditoria_interna VARCHAR(100) NOT NULL,                                                                -- Nombre del plan o proceso auditado
    objetivo_auditoria_interna TEXT NOT NULL,                                                                      -- Objetivo técnico de la auditoría
    alcance_auditoria_interna TEXT,                                                                                -- Procesos, documentos u obras bajo revisión
    id_proceso_auditoria_interna INT,                                                                              -- Proceso organizacional auditado (opcional)
    id_usuario_responsable_auditoria_interna INT NOT NULL,                                                         -- Usuario asignado como auditor principal
    fecha_programada_auditoria_interna DATE NOT NULL,                                                              -- Fecha planeada para la auditoría
    fecha_ejecucion_auditoria_interna DATE,                                                                        -- Fecha real en que se ejecutó (si aplica)
    estado_auditoria_interna ENUM('Programada', 'En ejecución', 'Finalizada', 'Suspendida') DEFAULT 'Programada',  -- Estado del ciclo de vida de la auditoría
    resultado_auditoria_interna TEXT,                                                                              -- Hallazgos o conclusiones generales (opcional)
    recomendaciones_auditoria_interna TEXT,                                                                        -- Acciones de mejora sugeridas (opcional)
    evidencia_documental_auditoria_interna BOOLEAN DEFAULT FALSE,                                                  -- Indica si se generaron actas, fotos u otros documentos

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                    -- Registro de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP         -- Última modificación del registro
);

CREATE TABLE solicitudes_desbloqueo (
    id_solicitud_desbloqueo INT PRIMARY KEY AUTO_INCREMENT,                                           -- Identificador único de la solicitud de desbloqueo
    id_usuario_solicitante_desbloqueo INT NOT NULL,                                                   -- Usuario bloqueado que realiza la solicitud
    id_bloqueo_usuario_solicitud INT NOT NULL,                                                        -- Bloqueo que se desea levantar
    fecha_solicitud_desbloqueo DATETIME DEFAULT CURRENT_TIMESTAMP,                                    -- Fecha y hora exacta de la solicitud
    metodo_verificacion_desbloqueo VARCHAR(30),                                                       -- Medio de verificación de la solicitud
    estado_solicitud_desbloqueo VARCHAR(20) DEFAULT 'pendiente',                                      -- Estado actual de la solicitud
    id_usuario_validador_solicitud_desbloqueo INT,                                                    -- Usuario evaluador que aprueba o rechaza la solicitud
    fecha_respuesta_solicitud_desbloqueo DATETIME,                                                    -- Fecha en que se resolvió la solicitud
    observaciones_solicitud_desbloqueo TEXT,                                                          -- Comentarios u observaciones del evaluador

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                               -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP    -- Fecha de última modificación del registro
);

CREATE TABLE etapas_flujo_documental (
    id_etapa_flujo_documental INT PRIMARY KEY AUTO_INCREMENT,                                   -- Identificador único de la etapa dentro del flujo documental
    id_flujo_documental_etapa INT NOT NULL,                                                     -- FK a flujos_documentales(id_flujo_documental): flujo general al que pertenece esta etapa
    orden_etapa_flujo_documental INT NOT NULL,                                                  -- Posición secuencial dentro del flujo
    id_rol_responsable_flujo_documental INT NOT NULL,                                           -- FK a roles(id_rol): rol encargado de ejecutar esta etapa
    accion_esperada_flujo_documental VARCHAR(50) NOT NULL,                                      -- Acción que debe ejecutar el rol para avanzar
    id_estado_documento_flujo INT NOT NULL,                                                     -- FK a estado_documento(id_estado_documento): estado esperado del documento tras la acción
    tiempo_maximo_dias_flujo_documental INT,                                                    -- Tiempo máximo en días para completar esta etapa (para alertas/vencimientos)
    condicion_salida_flujo_documental TEXT,                                                     -- Reglas lógicas o condiciones especiales para pasar a la siguiente etapa
    flujo_documental_activo BOOLEAN DEFAULT TRUE,                                               -- Indica si la etapa está actualmente habilitada en el flujo

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                             -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última modificación del registro
);

CREATE TABLE historial_estados_obra (
    id_historial_estado_obra INT PRIMARY KEY AUTO_INCREMENT,                                          -- Identificador único del cambio de estado
    id_obra_historial_estado INT NOT NULL,                                                            -- Obra sobre la cual se realiza el cambio
    id_estado_obra_historial INT NOT NULL,                                                            -- Estado nuevo asignado en esta entrada del historial
    id_usuario_modificador_historial_estado_obra INT NOT NULL,                                        -- Usuario que registró el cambio de estado
    fecha_cambio_historial_estado_obra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,                   -- Fecha y hora exacta en que se registró el cambio
    observacion_historial_estado_obra TEXT,                                                           -- Comentario, justificación o nota técnica del cambio

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última actualización del registro
);

CREATE TABLE modulos (
    id_modulo INT PRIMARY KEY AUTO_INCREMENT,                                  -- Identificador único del módulo funcional
    nombre_modulo VARCHAR(100) NOT NULL UNIQUE,                                -- Nombre visible del módulo (ej. “Gestión Documental”)
    codigo_modulo VARCHAR(30) NOT NULL UNIQUE,                                 -- Código semántico del módulo (“DOC_MGMT”, “VALID”)
    descripcion_modulo TEXT,                                                   -- Descripción extensa del propósito del módulo
    ruta_modulo VARCHAR(150),                                                  -- Ruta de acceso en frontend/backend (ej. “/documentos”)
    icono_modulo VARCHAR(50),                                                  -- Nombre del ícono para el menú lateral (ej. file-check, users)
    modulo_activo BOOLEAN DEFAULT TRUE,                                        -- Permite activar o desactivar módulos en la interfaz o backend
    id_usuario_creador_modulo INT,                                             -- Usuario administrador que lo configuró

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                      -- Fecha de creación del módulo
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Última actualización del registro
);

CREATE TABLE acciones_sistema_log (
    id_accion_log INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario_accion_log INT NOT NULL,                      -- FK: Usuario que ejecutó la acción
    id_modulo_accion_log INT NOT NULL,                       -- FK: Módulo donde ocurrió
    id_accion_sistema_log INT NOT NULL,                      -- FK: Acción que se ejecutó
    entidad_referida_accion_log VARCHAR(50),                 -- Nombre de la entidad afectada
    referencia_accion_log INT,                               -- ID del registro afectado
    fecha_evento_accion_log DATETIME DEFAULT CURRENT_TIMESTAMP,
    detalles_accion_log TEXT,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE historial_firmas_documento (
    id_historial_firma_documento INT PRIMARY KEY AUTO_INCREMENT,                                    -- Identificador único del evento de firma
    id_documento_historial_firma INT NOT NULL,                                                      -- Documento sobre el cual se ejecutó la acción de firma
    id_usuario_ejecutor_historial_firma_documento INT NOT NULL,                                      -- Usuario que ejecutó la firma
    id_rol_historial_firma_documento INT NOT NULL,                                                  -- Rol con el que actuó el usuario (Coordinador, Interventor, etc.)
    id_firma_documento_historial INT NOT NULL,                                                      -- Registro de firma vinculada al historial (clave a firmas_documento)
    id_estado_documento_historial INT NOT NULL,                                                     -- Estado del documento al momento de la firma
    resultado_historial_firma_documento ENUM('firmado', 'rechazado', 'anulado') NOT NULL,           -- Resultado de la acción de firma
    observaciones_historial_firma_documento TEXT,                                                   -- Comentarios del firmante (razón del rechazo, observación técnica, etc.)
    fecha_firma_historial_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha y hora exacta en que ocurrió la acción de firma
    ip_origen_historial_firma_documento VARCHAR(45),                                                -- Dirección IP desde donde se ejecutó la firma (IPv4 o IPv6)

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                       -- Fecha de creación del registro
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última modificación
);

CREATE TABLE integraciones_externas (
    id_integracion_externa INT PRIMARY KEY AUTO_INCREMENT,                                        -- Identificador único de la integración registrada
    nombre_servicio_integracion_externa VARCHAR(100) NOT NULL,                                    -- Nombre técnico o comercial del servicio integrado (ej. SECOOP, SIGP)
    descripcion_integracion_externa TEXT,                                                         -- Explicación funcional que permite la integración (opcional)
    url_endpoint_integracion_externa VARCHAR(255) NOT NULL,                                       -- URL base del servicio consumido o expuesto
    tipo_servicio_integracion_externa VARCHAR(50),                                                -- Tipo técnico de la integración
    metodo_autenticacion_integracion_externa VARCHAR(50),                                         -- Mecanismo de autenticación
    integracion_externa_activa BOOLEAN DEFAULT TRUE,                                              -- Estado de activación de la integración
    id_usuario_responsable_integracion_externa INT NOT NULL,                                      -- Usuario responsable de la integración

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Registro de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Registro de última modificación
);

CREATE TABLE bitacora_eventos_obra (
    id_bitacora_evento_obra INT PRIMARY KEY AUTO_INCREMENT,                                            -- Identificador único del evento en obra
    id_obra_bitacora_evento INT NOT NULL,                                                              -- Obra donde ocurre el evento
    id_usuario_registrador_bitacora_eventos_obra INT NOT NULL,                                         -- Usuario que reporta o registra el evento
    id_componente_obra_bitacora_eventos_obra INT,                                                     -- Frente o componente específico de la obra (opcional)
    tipo_bitacora_evento_obra VARCHAR(50),                                                             -- Clasificación del evento según catálogo establecido
    descripcion_bitacora_evento_obra TEXT NOT NULL,                                                    -- Descripción detallada del evento
    fecha_evento_bitacora_obra DATETIME DEFAULT CURRENT_TIMESTAMP,                                     -- Fecha y hora en que ocurrió el evento
    evidencia_documental_bitacora_eventos_obra BOOLEAN DEFAULT FALSE,                                  -- Indica si el evento tiene documentos o imágenes adjuntas
    observaciones_adicionales_bitacora_eventos_obra TEXT,                                              -- Comentarios complementarios o datos no estructurados

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                               -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP    -- Fecha de última actualización del registro
);

CREATE TABLE cronograma_obra (
    id_cronograma_obra INT PRIMARY KEY AUTO_INCREMENT,                                                                   -- Identificador único de la actividad
    id_obra_cronograma_obra INT NOT NULL,                                                                                -- Obra a la cual pertenece la actividad
    nombre_actividad_cronograma_obra VARCHAR(150) NOT NULL,                                                              -- Nombre de la actividad (ej. Fundaciones, Acabados, etc.)
    descripcion_cronograma_obra TEXT,                                                                                    -- Detalle funcional o técnico de la actividad (opcional)
    fecha_inicio_cronograma_obra DATE NOT NULL,                                                                          -- Fecha de inicio programada
    fecha_fin_cronograma_obra DATE NOT NULL,                                                                             -- Fecha de finalización estimada
    id_usuario_responsable_cronograma_obra INT,                                                                          -- Usuario asignado como responsable directo (si aplica)
    porcentaje_avance_cronograma_obra TINYINT DEFAULT 0,                                                                 -- Avance reportado en porcentaje
    estado_actividad_cronograma_obra ENUM('Pendiente', 'En ejecución', 'Finalizada', 'Suspendida') DEFAULT 'Pendiente',  -- Estado actual: Pendiente, En ejecución, Finalizada, Suspendida

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                               -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP    -- Fecha de última actualización
);

CREATE TABLE notificaciones_firma_documento (
    id_notificacion_firma_documento INT PRIMARY KEY AUTO_INCREMENT,                                          -- Identificador único de la notificación
    id_documento_notificacion_firma INT NOT NULL,                                                            -- Documento sobre el cual se genera la notificación
    id_usuario_destinatario_notificacion_firma_documento INT NOT NULL,                                       -- Usuario destinatario de la notificación
    id_firma_documento_notificacion INT NOT NULL,                                                            -- Firma a la cual está asociada la notificación
    mensaje_notificacion_firma_documento TEXT NOT NULL,                                                      -- Contenido textual de la notificación (funcional o de advertencia)
    notificacion_firma_documento_leida BOOLEAN DEFAULT FALSE,                                                -- Indica si el usuario ya ha leído la notificación
    fecha_envio_notificacion_firma_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha y hora de emisión de la notificación
    canal_envio_notificacion_firma_documento ENUM('sistema', 'correo', 'sms') DEFAULT 'sistema',             -- Canal por el cual se emitió la notificación

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última modificación del registro
);

CREATE TABLE modulo_accion (
    id_modulo_accion INT PRIMARY KEY AUTO_INCREMENT,                                    -- Identificador único de la relación módulo–acción
    id_modulo INT NOT NULL,                                                             -- Módulo funcional al que se asocia la acción
    id_accion_modulo INT NOT NULL,                                                      -- Acción funcional que se agrupa dentro del módulo
    id_usuario_asignador_modulo_accion INT NOT NULL,                                    -- Usuario que configuró la asignación módulo–acción
    modulo_accion_visible_en_ui BOOLEAN DEFAULT TRUE,                                   -- Indica si se debe mostrar visualmente en la interfaz (botón, icono, menú)
    modulo_accion_requiere_validacion BOOLEAN DEFAULT FALSE,                            -- Define si requiere aprobación superior antes de ejecutar la acción
    orden_visual_modulo_accion SMALLINT,                                                -- Controla el orden de visualización de la acción dentro del módulo
    fecha_asignacion_modulo_accion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                 -- Fecha en la que se creó esta asignación funcional

    UNIQUE(id_modulo, id_accion_modulo),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                        -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del registro
);

CREATE TABLE usuarios_asignados_obra (
    id_usuario_asignado_obra INT PRIMARY KEY AUTO_INCREMENT,                         -- Identificador único de la asignación
    id_obra_usuario_asignado INT NOT NULL,                                           -- Obra a la que se asigna el usuario
    id_usuario_afectado_asignado_obra INT NOT NULL,                                  -- Usuario que se asigna a la obra
    id_rol_obra_usuario_asignado INT NOT NULL,                                       -- Rol que el usuario desempeña dentro de la obra
    fecha_asignacion_usuario_obra DATE NOT NULL DEFAULT CURRENT_DATE,                -- Fecha en que se formaliza la asignación
    fecha_desvinculacion_usuario_asignado_obra DATE,                                 -- Fecha en la que el usuario es desvinculado (si aplica)
    usuario_asignado_obra_activo BOOLEAN DEFAULT TRUE,                               -- Indica si la asignación está vigente o fue cerrada

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del registro
);

CREATE TABLE categorias_documento (
    id_categoria_documento INT PRIMARY KEY AUTO_INCREMENT,                         -- Identificador único de la categoría de documentos
    nombre_categoria_documento VARCHAR(100) NOT NULL UNIQUE,                       -- Nombre de la categoría (ej. SST, Legal, Obra, Calidad)
    descripcion_categoria_documento TEXT,                                          -- Descripción extendida para uso administrativo
    estado_categoria_documento ENUM('activa', 'inactiva') DEFAULT 'activa',        -- Control de visibilidad y disponibilidad de la categoría
    orden_visual_categoria_documento INT,                                          -- Control del orden en que se muestra la categoría en menús o filtros
    id_modulo_categoria_documento INT,                                             -- Referencia al módulo funcional asociado (opcional)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                       -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del registro
);

CREATE TABLE rol_accion (
    id_rol_accion INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único del permiso asignado (rol–acción–módulo)
    id_rol INT NOT NULL,                                                                  -- Rol al cual se asigna la acción
    id_accion_rol INT NOT NULL,                                                           -- Acción específica habilitada para el rol (ej. validar, firmar)
    id_modulo_rol_accion INT NOT NULL,                                                    -- Módulo funcional en el cual se aplica la acción (ej. SST, Calidad)
    rol_accion_permitido BOOLEAN DEFAULT TRUE,                                            -- Define si la acción está habilitada para el rol en ese módulo
    fecha_asignacion_rol_accion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                      -- Fecha exacta en que se otorgó el permiso
    id_usuario_asignador_rol_accion INT NOT NULL,                                         -- Usuario que asignó esta acción al rol

    UNIQUE(id_rol, id_accion_rol, id_modulo_rol_accion),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación técnica del registro
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última modificación
);

CREATE TABLE versiones_documento (
    id_version_documento INT PRIMARY KEY AUTO_INCREMENT,                                 -- Identificador único de la versión
    id_documento_version_documento INT NOT NULL,                                         -- Documento al cual pertenece la versión
    numero_version_documento VARCHAR(20) NOT NULL,                                       -- Número de versión visible y trazable (ej. 1.0, v1, 2.1b)
    id_usuario_versionador_documento INT NOT NULL,                                       -- Usuario que creó esta versión
    descripcion_cambios_version_documento TEXT,                                          -- Notas técnicas o administrativas sobre los cambios realizados
    archivo_versionado_documento VARCHAR(255),                                           -- Ruta al archivo resultante de esta versión (opcional)
    es_version_documento_activa BOOLEAN DEFAULT FALSE,                                   -- Indica si esta es la versión activa del documento

    UNIQUE(id_documento_version_documento, numero_version_documento),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                     -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación
);

CREATE TABLE valores_campos_documento (
    id_valor_campo_documento INT PRIMARY KEY AUTO_INCREMENT,                                             -- Identificador único del valor registrado
    id_documento_valor_campo INT NOT NULL,                                                               -- Documento al que pertenece este valor ingresado
    id_campo_personalizado_valor_documento INT NOT NULL,                                                 -- Campo de plantilla al que corresponde el valor
    id_usuario_registrador_valor_campo_documento INT NOT NULL,                                           -- Usuario que ingresó el valor
    valor_ingresado_campo_documento TEXT NOT NULL,                                                       -- Valor ingresado en formato libre según el tipo de dato del campo
    fecha_ingreso_valor_campo_documento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                             -- Fecha y hora exacta del ingreso del valor
    origen_entrada_valor_campo_documento ENUM('manual', 'importado', 'prellenado') DEFAULT 'manual',     -- Origen del valor: diligenciado manualmente, importado o precargado

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                          -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última modificación
);

CREATE TABLE bitacora_eventos (
    id_bitacora_evento INT PRIMARY KEY AUTO_INCREMENT,                             -- Identificador único del evento registrado
    id_usuario_ejecutor_bitacora_evento INT NOT NULL,                              -- Usuario que ejecutó la acción
    id_documento_bitacora_evento INT,                                              -- Documento afectado por la acción (si aplica)
    id_rol_bitacora_evento INT NOT NULL,                                           -- Rol activo del usuario al momento del evento
    modulo_bitacora_evento VARCHAR(50) NOT NULL,                                   -- Módulo funcional donde ocurrió el evento (ej. SST, OBRA, CALIDAD)
    tipo_bitacora_evento VARCHAR(50) NOT NULL,                                     -- Nombre del evento ejecutado (ej. CREACION, FIRMA, RECHAZO)
    descripcion_bitacora_evento TEXT,                                              -- Descripción adicional del evento (acción, error, observación técnica)
    ip_origen_bitacora_evento VARCHAR(45),                                         -- Dirección IP del cliente que originó el evento (IPv4 o IPv6)
    user_agent_bitacora_evento TEXT,                                               -- Información del navegador y sistema operativo del usuario
    fecha_bitacora_evento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,                     -- Fecha y hora exacta en la que ocurrió el evento

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                 -- Fecha de creación del registro (auditoría)
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación del registro
);

CREATE TABLE eventos_programados (
    id_evento_programado INT PRIMARY KEY AUTO_INCREMENT,                                         -- Identificador único del evento programado
    titulo_evento_programado VARCHAR(100) NOT NULL,                                              -- Título visible del evento (ej. “Auditoría ISO a Obra A”)
    descripcion_evento_programado TEXT,                                                          -- Detalle o motivo del evento programado
    fecha_evento_programado DATETIME NOT NULL,                                                   -- Fecha y hora previstas del evento
    id_usuario_responsable_evento_programado INT NOT NULL,                                       -- FK a usuarios(id_usuario): usuario que crea o gestiona el evento
    tipo_evento_programado VARCHAR(50) NOT NULL,                                                 -- Clasificación del evento para filtros y controles
    estado_evento_programado VARCHAR(20) NOT NULL,                                               -- Estado actual del evento en su ciclo de vida
    id_obra_evento_programado INT,                                                               -- FK a obras(id_obra): obra a la que aplica el evento (si aplica)
    id_proceso_evento_programado INT,                                                            -- FK a procesos(id_proceso): proceso relacionado (si aplica)
    evento_programado_requiere_documento BOOLEAN DEFAULT FALSE,                                  -- Marca si el evento requiere acta o documento formal

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                             -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Fecha de última actualización del registro
);

CREATE TABLE entidades_externas_obra (
    id_entidad_obra INT PRIMARY KEY AUTO_INCREMENT,                                          -- Identificador único para la relación entidad–obra
    id_obra_entidad_obra INT NOT NULL,                                                       -- Obra con la cual está relacionada la entidad externa
    nombre_entidad_obra VARCHAR(150) NOT NULL,                                               -- Nombre oficial de la empresa externa
    nit_entidad_obra VARCHAR(20) NOT NULL,                                                   -- Identificación tributaria (puede repetirse entre obras)
    tipo_entidad_obra VARCHAR(50),                                                           -- Clasificación funcional (ej. Contratista, Interventoría)
    responsable_contacto_entidad_obra VARCHAR(100),                                          -- Nombre de contacto principal en la entidad (opcional)
    correo_contacto_entidad_obra VARCHAR(150),                                               -- Correo electrónico del responsable (opcional)
    telefono_contacto_entidad_obra VARCHAR(20),                                              -- Número de contacto directo (opcional)
    entidad_obra_activa BOOLEAN DEFAULT TRUE,                                                -- Para suspender una entidad sin eliminar su trazabilidad

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                              -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   -- Fecha de última modificación del registro
);

CREATE TABLE adjuntos_documentos (
    id_adjunto_documento INT PRIMARY KEY AUTO_INCREMENT,                                            -- Identificador único del adjunto
    id_documento_adjunto_documento INT NOT NULL,                                                    -- Clave foránea al documento principal
    nombre_archivo_adjunto_documento VARCHAR(255) NOT NULL,                                         -- Nombre original del archivo cargado
    ruta_archivo_adjunto_documento TEXT NOT NULL,                                                   -- Ruta física o URL donde está almacenado el archivo
    tipo_mime_adjunto_documento VARCHAR(100) NOT NULL,                                              -- Tipo MIME del archivo (ej. application/pdf, image/jpeg)
    peso_kb_adjunto_documento INT NOT NULL,                                                         -- Tamaño del archivo en kilobytes
    fecha_carga_adjunto_documento DATETIME DEFAULT CURRENT_TIMESTAMP,                               -- Fecha y hora exacta de carga del archivo
    id_usuario_cargador_adjunto_documento INT NOT NULL,                                             -- Usuario que realizó la carga

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                -- Fecha de creación del registro
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP     -- Fecha de última modificación del registro
);

CREATE TABLE permisos_por_rol (
    id_permiso_rol INT PRIMARY KEY AUTO_INCREMENT,                                 -- Identificador único del permiso asignado
    id_rol_permiso_asignado INT NOT NULL,                                          -- Rol al que se asigna el permiso
    id_accion_permiso_rol INT NOT NULL,                                            -- Acción permitida (crear, validar, firmar, etc.)
    estado_permiso_rol ENUM('activo', 'inactivo') NOT NULL,                        -- Estado funcional del permiso (activo/inactivo)
    id_estado_usuario_permiso_rol INT,                                             -- Estado del usuario desde el cual se habilita el permiso
    condicion_logica_permiso_rol TEXT,                                             -- Condición adicional evaluada por backend (expresiones dinámicas)

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                            -- Fecha de creación del permiso
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Fecha de última modificación
);

CREATE TABLE dependencias_funcionales (
    id_dependencia_funcional INT PRIMARY KEY AUTO_INCREMENT,                                      -- Identificador único
    id_modulo_origen_dependencia_funcional INT NOT NULL,                                          -- Módulo que origina la condición
    id_modulo_destino_dependencia_funcional INT NOT NULL,                                         -- Módulo afectado por la condición
    tipo_origen_dependencia_funcional VARCHAR(30) NOT NULL,                                       -- Nombre de la entidad origen (ej. documentos)
    origen_dependencia_funcional INT NOT NULL,                                                    -- ID del registro en la tabla origen
    tipo_destino_dependencia_funcional VARCHAR(30) NOT NULL,                                      -- Nombre de la entidad destino
    destino_dependencia_funcional INT NOT NULL,                                                   -- ID del registro en la tabla destino
    condicion_logica_dependencia_funcional VARCHAR(100),                                          -- Lógica condicional a evaluar (ej. estado = 'finalizado')
    mensaje_bloqueo_dependencia_funcional TEXT,                                                   -- Mensaje mostrado si no se cumple la dependencia
    dependencia_funcional_activa BOOLEAN DEFAULT TRUE,                                            -- Control de activación lógica de la regla

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,                                                -- Registro de creación
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP                     -- Última modificación
);

