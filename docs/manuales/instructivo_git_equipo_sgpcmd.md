# 🛠️ Instructivo de Trabajo en Git – Proyecto SGPCMD

Este instructivo explica paso a paso cómo cada integrante del equipo debe trabajar en el repositorio SGPCMD, usando ramas personales, subiendo sus desarrollos y creando Pull Requests (PR) correctamente.

---

## 🔁 Flujo de trabajo oficial

main ➝ develop ➝ feature/[NombreDesarrollador]

- `main`: rama principal, solo código aprobado por el revisor técnico  
- `develop`: rama de integración, se fusionan cambios de todos los desarrolladores  
- `feature/[nombre]`: rama de trabajo personal de cada desarrollador

---

## 👥 Ramas asignadas

| Nombre               | Rama de trabajo               |
|----------------------|-------------------------------|
| Cristian Hernández   | `feature/CristianHernandez`   |
| Diego Ruiz           | `feature/DiegoRuiz`           |
| Valeria Bohórquez    | `feature/ValeriaBohorquez`    |
| Venjamín Novoa       | `feature/VenjaminNovoa`       |

---

## 👨‍💻 Para desarrolladores – Paso a paso

### 1️⃣ Cambiarse a tu rama

```bash
git fetch origin
git checkout -b feature/TuNombre origin/feature/TuNombre
```

📌 Ejemplo para Diego:
```bash
git checkout -b feature/DiegoRuiz origin/feature/DiegoRuiz
```

---

### 2️⃣ Hacer cambios y commits

```bash
git add .
git commit -m "Implementación de módulo de login"
```

---

### 3️⃣ Subir tus cambios

```bash
git push origin feature/TuNombre
```

---

### 4️⃣ Crear un Pull Request

1. En GitHub, ve a la pestaña "Pull Requests"  
2. Haz clic en "New Pull Request"  
3. Selecciona:  
   - base: `develop`  
   - compare: `feature/TuNombre`  
4. Llena el formulario con la plantilla oficial  
5. Asigna como revisor a Cristian

---

## 🔁 Correcciones tras revisión

Si el revisor (Cristian) solicita ajustes en el Pull Request:

```bash
git add .
git commit -m "Corrección observaciones de revisión"
git push origin feature/TuNombre
```

📌 Por ejemplo, si eres Diego Ruiz:

```bash
git push origin feature/DiegoRuiz
```

🔎 Reemplaza `TuNombre` por tu nombre real de rama.

---

## 🧑‍🏫 Para el revisor técnico (Cristian)

### 📥 Revisar el Pull Request

1. Entra al PR  
2. Lee la descripción, verifica artefactos referenciados  
3. Dirígete a la pestaña `Files changed`  
4. Haz clic en `Review changes`

---

### 🧪 Validación del PR

Verificar:
- Estructura del código
- Validaciones y reglas de negocio
- Comentarios técnicos
- Pruebas, interfaces visuales si aplican

---

### 💬 ¿Cómo dejar observaciones?

#### A. Comentarios línea por línea

- Dirígete a la pestaña `Files changed`
- Haz clic en cualquier línea y comenta

#### B. Comentarios generales

- En la pestaña `Conversation`, deja observaciones globales

#### C. Marcar "Changes requested"

- Usa la opción `Request changes` si el PR necesita corrección

📌 Ejemplo:

```md
Se solicitaron cambios para mejorar la validación de usuarios y documentar correctamente las funciones. Por favor realiza las correcciones y vuelve a hacer push a la misma rama.
```

---

## ✅ Aprobar y hacer merge

1. Si todo está bien, aprueba el PR  
2. Haz merge hacia `develop`  
3. Borra la rama si aplica

---

## 🚀 Fase final – merge a `main`

Solo Cristian puede:

1. Crear PR de `develop` ➝ `main`  
2. Validar nuevamente  
3. Añadir tag si aplica (`v1.0.0`)  
4. Hacer merge final

---

## 📌 Reglas clave

| ✔️ Permitido                     | ❌ Prohibido                      |
|----------------------------------|----------------------------------|
| Trabajar en tu rama              | Hacer merge sin revisión         |
| Crear PR hacia `develop`         | Trabajar directamente en `main` |
| Solicitar revisión               | Subir código roto                |
| Usar la plantilla de PR          | Ignorar convenciones del equipo |

---

## 🧾 Resumen de Validación y Trazabilidad

Este archivo incluye:

- Flujo completo con ramas reales
- Ejemplos personalizados por desarrollador
- Guía paso a paso para PR
- Protocolo de revisión técnica
- Ejemplos de comentarios línea por línea y generales
- Comportamiento esperado del equipo revisor y del desarrollador
- Indicaciones de merge final y mantenimiento

---

Este instructivo es la guía oficial de trabajo colaborativo en Git para el sistema SGPCMD.