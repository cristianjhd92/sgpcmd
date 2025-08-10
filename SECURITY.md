# 🛡️ Política de Seguridad – SGPCMD

Este documento describe cómo manejamos aspectos de seguridad dentro del desarrollo del Sistema de Gestión de Proyectos ConstruserviciosMD (SGPCMD), considerando nuestro contexto académico como proyecto de formación en el SENA.

---

## 📌 Propósito

Aunque SGPCMD es un proyecto de aprendizaje, aplicamos desde el inicio prácticas básicas de seguridad para garantizar que:

- No se expongan credenciales o datos sensibles
- El código esté protegido ante errores comunes (inyección, mal manejo de sesiones, etc.)
- Los desarrolladores mantengan una cultura técnica responsable

---

## 🧑‍💻 Reportes de vulnerabilidad

Si algún integrante del equipo detecta un fallo de seguridad en cualquier componente (frontend, backend, base de datos), debe:

1. **NO subirlo públicamente al repositorio**
2. Enviar el hallazgo de forma interna a Cristian Hernández (@cristianjhd92)
3. Documentar:
   - Archivo afectado
   - Comportamiento inseguro
   - Riesgo potencial

---

## ✅ Buenas prácticas que seguimos

- Uso de `.env` para variables sensibles (secretos, rutas de BD)
- Exclusión de archivos sensibles vía `.gitignore`
- Validaciones del lado servidor (Flask) y del cliente (HTML/JS)
- Revisión obligatoria de código (CODEOWNERS)
- Tokens de autenticación (JWT) para rutas protegidas (fase avanzada)
- Validaciones tipadas y sanitización de inputs (con ORM en etapa 2)

---

## 🔐 Acceso y roles

- Solo los usuarios autenticados podrán acceder a los módulos protegidos del sistema
- Las vistas y operaciones estarán restringidas por **rol y estado del usuario**
- No se expondrá ninguna ruta administrativa sin validación previa

---

## 🛠️ Herramientas previstas

A medida que avancemos en el proyecto, planeamos incluir:

- Middleware de autenticación y autorización
- Sanitización avanzada (ORM, validadores)
- Pruebas de seguridad básica con linters y pruebas manuales

---

## 👤 Responsable de seguridad

El CODEOWNER y revisor técnico de este repositorio es:

**Cristian Hernández Díaz**  
@cristianjhd92

Todas las decisiones sobre validaciones, rutas protegidas, tokens y control de errores deben ser aprobadas por él.

---

Este archivo se mantendrá actualizado a medida que el sistema evolucione.