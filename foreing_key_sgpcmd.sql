USE sgpcmd;

ALTER TABLE usuarios
ADD CONSTRAINT fk_usuarios_id_tipo_documento_identidad_usuario FOREIGN KEY (id_tipo_documento_identidad_usuario)
REFERENCES tipos_documento_identidad(id_tipo_documento_identidad) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE usuarios
ADD CONSTRAINT fk_usuarios_id_rol_usuario FOREIGN KEY (id_rol_usuario)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE usuarios
ADD CONSTRAINT fk_usuarios_id_estado_usuario FOREIGN KEY (id_estado_usuario)
REFERENCES estado_usuario(id_estado_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE usuarios
ADD CONSTRAINT fk_usuarios_id_usuario_generador_bloqueo FOREIGN KEY (id_usuario_generador_bloqueo)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE tipos_documento
ADD CONSTRAINT fk_tipos_documento_id_usuario_creador_tipo_documento FOREIGN KEY (id_usuario_creador_tipo_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE plantillas_documento
ADD CONSTRAINT fk_plantillas_documento_id_tipo_documento_plantilla_documento FOREIGN KEY (id_tipo_documento_plantilla_documento)
REFERENCES tipos_documento(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE obras
ADD CONSTRAINT fk_obras_id_estado_obra FOREIGN KEY (id_estado_obra)
REFERENCES estado_obra(id_estado_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE obras
ADD CONSTRAINT fk_obras_id_tipo_obra FOREIGN KEY (id_tipo_obra)
REFERENCES tipos_obra(id_tipo_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE acciones
ADD CONSTRAINT fk_acciones_id_usuario_creador_accion FOREIGN KEY (id_usuario_creador_accion)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE estado_documento
ADD CONSTRAINT fk_estado_documento_id_usuario_creador_estado_documento FOREIGN KEY (id_usuario_creador_estado_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE campos_personalizados
ADD CONSTRAINT fk_campos_personalizados_id_plantilla_documento FOREIGN KEY (id_plantilla_documento_campo_personalizado)
REFERENCES plantillas_documento(id_plantilla_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE estado_usuario
ADD CONSTRAINT fk_estado_usuario_id_usuario_creador_estado_usuario FOREIGN KEY (id_usuario_creador_estado_usuario)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE procesos
ADD CONSTRAINT fk_procesos_id_proceso_padre FOREIGN KEY (id_proceso_padre)
REFERENCES procesos(id_proceso) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE procesos
ADD CONSTRAINT fk_procesos_id_usuario_responsable_proceso FOREIGN KEY (id_usuario_responsable_proceso)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE componentes_obra
ADD CONSTRAINT fk_componentes_obra_id_obra_componente_obra FOREIGN KEY (id_obra_componente_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE roles
ADD CONSTRAINT fk_roles_id_usuario_creador_rol FOREIGN KEY (id_usuario_creador_rol)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE documentos
ADD CONSTRAINT fk_documentos_id_usuario_creador_documento FOREIGN KEY (id_usuario_creador_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE documentos
ADD CONSTRAINT fk_documentos_id_tipo_documento FOREIGN KEY (id_tipo_documento)
REFERENCES tipos_documento(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE documentos
ADD CONSTRAINT fk_documentos_id_estado_documento FOREIGN KEY (id_estado_documento)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE documentos
ADD CONSTRAINT fk_documentos_id_usuario_generador_documento FOREIGN KEY (id_usuario_generador_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bloqueos_usuarios
ADD CONSTRAINT fk_bloqueos_usuarios_id_usuario_afectado FOREIGN KEY (id_usuario_afectado_bloqueo_usuario)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bloqueos_usuarios
ADD CONSTRAINT fk_bloqueos_usuarios_id_usuario_origen FOREIGN KEY (id_usuario_origen_bloqueo_usuario)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE ubicaciones_obra
ADD CONSTRAINT fk_ubicaciones_obra_id_obra_ubicacion_obra FOREIGN KEY (id_obra_ubicacion_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE notificaciones_sistema
ADD CONSTRAINT fk_notificaciones_sistema_id_usuario_receptor FOREIGN KEY (id_usuario_receptor_notificacion_sistema)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE documentos_obligatorios_por_rol
ADD CONSTRAINT fk_doc_oblig_por_rol_id_tipo_documento FOREIGN KEY (id_tipo_documento_obligatorio_rol)
REFERENCES tipos_documento(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE documentos_obligatorios_por_rol
ADD CONSTRAINT fk_doc_oblig_por_rol_id_rol_responsable FOREIGN KEY (id_rol_responsable_documento_obligatorio)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE documentos_obligatorios_por_rol
ADD CONSTRAINT fk_doc_oblig_por_rol_id_estado_usuario FOREIGN KEY (id_estado_usuario_obligatorio_documento_rol)
REFERENCES estado_usuario(id_estado_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE comentarios_documento
ADD CONSTRAINT fk_comentarios_documento_id_documento FOREIGN KEY (id_documento_comentario_documento)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE comentarios_documento
ADD CONSTRAINT fk_comentarios_documento_id_usuario_autor FOREIGN KEY (id_usuario_autor_comentario_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE tokens_recuperacion
ADD CONSTRAINT fk_tokens_recuperacion_id_usuario_generador FOREIGN KEY (id_usuario_generador_token_recuperacion)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE requerimientos_firma_documento
ADD CONSTRAINT fk_req_firma_doc_id_tipo_documento FOREIGN KEY (id_tipo_documento_requerimiento_firma)
REFERENCES tipos_documento(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE requerimientos_firma_documento
ADD CONSTRAINT fk_req_firma_doc_id_rol_responsable FOREIGN KEY (id_rol_responsable_requerimiento_firma)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE requerimientos_firma_documento
ADD CONSTRAINT fk_req_firma_doc_id_estado_documento FOREIGN KEY (id_estado_documento_requerimiento_firma)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE flujos_documentales
ADD CONSTRAINT fk_flujo_doc_id_tipo_documento FOREIGN KEY (id_tipo_documento_flujo_documental)
REFERENCES tipos_documento(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE flujos_documentales
ADD CONSTRAINT fk_flujo_doc_id_rol FOREIGN KEY (id_rol_flujo_documental)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE flujos_documentales
ADD CONSTRAINT fk_flujo_doc_id_estado_inicio FOREIGN KEY (id_estado_documento_inicio_flujo_documental)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE flujos_documentales
ADD CONSTRAINT fk_flujo_doc_id_estado_final FOREIGN KEY (id_estado_documento_final_flujo_documental)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE reportes_diarios_obra
ADD CONSTRAINT fk_reportes_diarios_obra_id_obra FOREIGN KEY (id_obra_reporte_diario_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE reportes_diarios_obra
ADD CONSTRAINT fk_reportes_diarios_obra_id_usuario FOREIGN KEY (id_usuario_responsable_reporte_diario_obra)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_estados_documento
ADD CONSTRAINT fk_hist_doc_id_documento FOREIGN KEY (id_documento_historial_estado)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE historial_estados_documento
ADD CONSTRAINT fk_hist_doc_id_estado_anterior FOREIGN KEY (id_estado_documento_historial_anterior)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE historial_estados_documento
ADD CONSTRAINT fk_hist_doc_id_estado_nuevo FOREIGN KEY (id_estado_documento_historial_nuevo)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_estados_documento
ADD CONSTRAINT fk_hist_doc_id_usuario FOREIGN KEY (id_usuario_ejecutor_historial_estado_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_estados_documento
ADD CONSTRAINT fk_hist_doc_id_rol FOREIGN KEY (id_rol_historial_estado_documento)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE firmas_documento
ADD CONSTRAINT fk_firma_documento_id_documento FOREIGN KEY (id_documento_firma)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE firmas_documento
ADD CONSTRAINT fk_firma_documento_id_usuario FOREIGN KEY (id_usuario_responsable_firma_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE firmas_documento
ADD CONSTRAINT fk_firma_documento_id_rol FOREIGN KEY (id_rol_responsable_firma_documento)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE auditorias_internas
ADD CONSTRAINT fk_auditorias_internas_id_proceso FOREIGN KEY (id_proceso_auditoria_interna)
REFERENCES procesos(id_proceso) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE auditorias_internas
ADD CONSTRAINT fk_auditorias_internas_id_usuario FOREIGN KEY (id_usuario_responsable_auditoria_interna)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE solicitudes_desbloqueo
ADD CONSTRAINT fk_solicitudes_desbloqueo_id_usuario_solicitante
FOREIGN KEY (id_usuario_solicitante_desbloqueo)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE solicitudes_desbloqueo
ADD CONSTRAINT fk_solicitudes_desbloqueo_id_bloqueo
FOREIGN KEY (id_bloqueo_usuario_solicitud)
REFERENCES bloqueos_usuarios(id_bloqueo_usuario) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE solicitudes_desbloqueo
ADD CONSTRAINT fk_solicitudes_desbloqueo_id_usuario_validador
FOREIGN KEY (id_usuario_validador_solicitud_desbloqueo)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE etapas_flujo_documental
ADD CONSTRAINT fk_etapas_flujo_documental_id_flujo
FOREIGN KEY (id_flujo_documental_etapa)
REFERENCES flujos_documentales(id_flujo_documental) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE etapas_flujo_documental
ADD CONSTRAINT fk_etapas_flujo_documental_id_rol
FOREIGN KEY (id_rol_responsable_flujo_documental)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE etapas_flujo_documental
ADD CONSTRAINT fk_etapas_flujo_documental_id_estado
FOREIGN KEY (id_estado_documento_flujo)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_estados_obra
ADD CONSTRAINT fk_historial_estados_obra_id_obra
FOREIGN KEY (id_obra_historial_estado)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE historial_estados_obra
ADD CONSTRAINT fk_historial_estados_obra_id_estado
FOREIGN KEY (id_estado_obra_historial)
REFERENCES estado_obra(id_estado_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_estados_obra
ADD CONSTRAINT fk_historial_estados_obra_id_usuario
FOREIGN KEY (id_usuario_modificador_historial_estado_obra)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE modulos
ADD CONSTRAINT fk_modulos_id_usuario_creador
FOREIGN KEY (id_usuario_creador_modulo)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE acciones_sistema_log
ADD CONSTRAINT fk_log_usuario
FOREIGN KEY (id_usuario_accion_log)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE acciones_sistema_log
ADD CONSTRAINT fk_log_modulo
FOREIGN KEY (id_modulo_accion_log)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE acciones_sistema_log
ADD CONSTRAINT fk_log_accion
FOREIGN KEY (id_accion_sistema_log)
REFERENCES acciones_sistema(id_accion_sistema) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_firmas_documento
ADD CONSTRAINT fk_historial_firma_doc_id_documento
FOREIGN KEY (id_documento_historial_firma)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE historial_firmas_documento
ADD CONSTRAINT fk_historial_firma_doc_id_usuario
FOREIGN KEY (id_usuario_ejecutor_historial_firma_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_firmas_documento
ADD CONSTRAINT fk_historial_firma_doc_id_rol
FOREIGN KEY (id_rol_historial_firma_documento)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE historial_firmas_documento
ADD CONSTRAINT fk_historial_firma_doc_id_firma
FOREIGN KEY (id_firma_documento_historial)
REFERENCES firmas_documento(id_firma_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE historial_firmas_documento
ADD CONSTRAINT fk_historial_firma_doc_id_estado
FOREIGN KEY (id_estado_documento_historial)
REFERENCES estado_documento(id_estado_documento) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE integraciones_externas
ADD CONSTRAINT fk_integraciones_externas_id_usuario
FOREIGN KEY (id_usuario_responsable_integracion_externa)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bitacora_eventos_obra
ADD CONSTRAINT fk_bitacora_eventos_obra_id_obra
FOREIGN KEY (id_obra_bitacora_evento)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE bitacora_eventos_obra
ADD CONSTRAINT fk_bitacora_eventos_obra_id_usuario
FOREIGN KEY (id_usuario_registrador_bitacora_eventos_obra)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bitacora_eventos_obra
ADD CONSTRAINT fk_bitacora_eventos_obra_id_componente
FOREIGN KEY (id_componente_obra_bitacora_eventos_obra)
REFERENCES componentes_obra(id_componente_obra) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE cronograma_obra
ADD CONSTRAINT fk_cronograma_obra_id_obra
FOREIGN KEY (id_obra_cronograma_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE cronograma_obra
ADD CONSTRAINT fk_cronograma_obra_id_usuario
FOREIGN KEY (id_usuario_responsable_cronograma_obra)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE notificaciones_firma_documento
ADD CONSTRAINT fk_notif_firma_doc_id_documento
FOREIGN KEY (id_documento_notificacion_firma)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE notificaciones_firma_documento
ADD CONSTRAINT fk_notif_firma_doc_id_usuario
FOREIGN KEY (id_usuario_destinatario_notificacion_firma_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE notificaciones_firma_documento
ADD CONSTRAINT fk_notif_firma_doc_id_firma
FOREIGN KEY (id_firma_documento_notificacion)
REFERENCES firmas_documento(id_firma_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE modulo_accion
ADD CONSTRAINT fk_modulo_accion_id_modulo
FOREIGN KEY (id_modulo)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE modulo_accion
ADD CONSTRAINT fk_modulo_accion_id_accion
FOREIGN KEY (id_accion_modulo)
REFERENCES acciones_sistema(id_accion_sistema) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE modulo_accion
ADD CONSTRAINT fk_modulo_accion_id_usuario
FOREIGN KEY (id_usuario_asignador_modulo_accion)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE usuarios_asignados_obra
ADD CONSTRAINT fk_usuarios_asignados_obra_id_obra
FOREIGN KEY (id_obra_usuario_asignado)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE usuarios_asignados_obra
ADD CONSTRAINT fk_usuarios_asignados_obra_id_usuario
FOREIGN KEY (id_usuario_afectado_asignado_obra)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE usuarios_asignados_obra
ADD CONSTRAINT fk_usuarios_asignados_obra_id_rol_obra
FOREIGN KEY (id_rol_obra_usuario_asignado)
REFERENCES roles_obra(id_rol_obra) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE categorias_documento
ADD CONSTRAINT fk_categorias_documento_id_modulo
FOREIGN KEY (id_modulo_categoria_documento)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE rol_accion
ADD CONSTRAINT fk_rol_accion_id_rol
FOREIGN KEY (id_rol)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE rol_accion
ADD CONSTRAINT fk_rol_accion_id_accion
FOREIGN KEY (id_accion_rol)
REFERENCES acciones_sistema(id_accion_sistema) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE rol_accion
ADD CONSTRAINT fk_rol_accion_id_modulo
FOREIGN KEY (id_modulo_rol_accion)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE rol_accion
ADD CONSTRAINT fk_rol_accion_id_usuario_asignador
FOREIGN KEY (id_usuario_asignador_rol_accion)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE versiones_documento
ADD CONSTRAINT fk_versiones_documento_id_documento
FOREIGN KEY (id_documento_version_documento)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE versiones_documento
ADD CONSTRAINT fk_versiones_documento_id_usuario
FOREIGN KEY (id_usuario_versionador_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE valores_campos_documento
ADD CONSTRAINT fk_valores_campos_documento_id_documento
FOREIGN KEY (id_documento_valor_campo)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE valores_campos_documento
ADD CONSTRAINT fk_valores_campos_documento_id_campo
FOREIGN KEY (id_campo_personalizado_valor_documento)
REFERENCES campos_personalizados(id_campo_personalizado) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE valores_campos_documento
ADD CONSTRAINT fk_valores_campos_documento_id_usuario
FOREIGN KEY (id_usuario_registrador_valor_campo_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bitacora_eventos
ADD CONSTRAINT fk_bitacora_eventos_id_usuario
FOREIGN KEY (id_usuario_ejecutor_bitacora_evento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE bitacora_eventos
ADD CONSTRAINT fk_bitacora_eventos_id_documento
FOREIGN KEY (id_documento_bitacora_evento)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE bitacora_eventos
ADD CONSTRAINT fk_bitacora_eventos_id_rol
FOREIGN KEY (id_rol_bitacora_evento)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE eventos_programados
ADD CONSTRAINT fk_eventos_programados_id_usuario
FOREIGN KEY (id_usuario_responsable_evento_programado)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE eventos_programados
ADD CONSTRAINT fk_eventos_programados_id_obra
FOREIGN KEY (id_obra_evento_programado)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE eventos_programados
ADD CONSTRAINT fk_eventos_programados_id_proceso
FOREIGN KEY (id_proceso_evento_programado)
REFERENCES procesos(id_proceso) ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE entidades_externas_obra
ADD CONSTRAINT fk_entidades_externas_obra_id_obra
FOREIGN KEY (id_obra_entidad_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE adjuntos_documentos
ADD CONSTRAINT fk_adjuntos_documentos_id_documento
FOREIGN KEY (id_documento_adjunto_documento)
REFERENCES documentos(id_documento) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE adjuntos_documentos
ADD CONSTRAINT fk_adjuntos_documentos_id_usuario
FOREIGN KEY (id_usuario_cargador_adjunto_documento)
REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE permisos_por_rol
ADD CONSTRAINT fk_permisos_por_rol_id_rol
FOREIGN KEY (id_rol_permiso_asignado)
REFERENCES roles(id_rol) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE permisos_por_rol
ADD CONSTRAINT fk_permisos_por_rol_id_accion
FOREIGN KEY (id_accion_permiso_rol)
REFERENCES acciones(id_accion) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE permisos_por_rol
ADD CONSTRAINT fk_permisos_por_rol_id_estado_usuario
FOREIGN KEY (id_estado_usuario_permiso_rol)
REFERENCES estado_usuario(id_estado_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE dependencias_funcionales
ADD CONSTRAINT fk_dep_func_id_modulo_origen
FOREIGN KEY (id_modulo_origen_dependencia_funcional)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE dependencias_funcionales
ADD CONSTRAINT fk_dep_func_id_modulo_destino
FOREIGN KEY (id_modulo_destino_dependencia_funcional)
REFERENCES modulos(id_modulo) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE frentes_obra
ADD CONSTRAINT fk_frentes_obra_id_obra
FOREIGN KEY (id_obra_frente_obra)
REFERENCES obras(id_obra) ON UPDATE CASCADE ON DELETE CASCADE;
