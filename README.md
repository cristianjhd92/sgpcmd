# SGPCMD – Sistema de Gestión de Proyectos ConstruserviciosMD

**Proyecto de Grado – SENA 2025**  
**Tecnología en Análisis y Desarrollo de Software**

---

## 📘 Descripción general

SGPCMD es un sistema web diseñado para optimizar, controlar y centralizar los procesos técnicos, administrativos y operativos relacionados con la ejecución de proyectos de ingeniería civil. El sistema permite la gestión integral de usuarios, cronogramas, bitácoras, módulos de calidad, seguridad, permisos y documentación digital.

---

## 🎯 Objetivos

### Funcionales:
- Digitalizar la trazabilidad documental en proyectos de obra
- Controlar usuarios, estados, roles y permisos
- Registrar eventos clave como bloqueos, auditorías y cambios de estado
- Permitir validación y aprobación de acciones sensibles

### Formativos:
- Aplicar buenas prácticas de arquitectura MVC
- Implementar ORM y migraciones reales con SQLAlchemy
- Modularizar backend y frontend
- Incorporar testing y control de versiones colaborativo

---

## 🧱 Stack tecnológico

| Capa        | Tecnologías principales                                                                |
|-------------|----------------------------------------------------------------------------------------|
| Frontend    | HTML5, Bootstrap 5, CSS3, JavaScript Modular                                           |
| Backend     | Flask (Python), Blueprints, SQLAlchemy, Flask-Migrate                                  |
| Base de datos | MySQL (XAMPP local)                                                                  |
| Seguridad   | JWT (Flask-JWT-Extended), CORS, Flask-Talisman                                         |
| Testing     | Pytest, FlaskClient (estructura en `tests/`)                                           |
| DevOps      | GitHub Actions (CI), CODEOWNERS, PR templates                                          |
| Documentación | Markdown, PDF, ERD, CHANGELOG, manuales técnicos y funcionales                       |

---

## 🗂️ Estructura del proyecto

```bash
sgpcmd/
├── backend/
│   ├── app.py
│   ├── __init__.py
│   ├── config.py
│   ├── routes/
│   ├── models/
│   ├── schemas/
│   ├── services/
│   ├── controllers/
│   ├── utils/
│   └── extensions/
│
├── frontend/
│   ├── templates/
│   ├── templates/partials/
│   ├── css/
│   ├── js/
│   └── js/components/
│
├── database/
│   ├── init.sql
│   ├── demo_data.sql
│   ├── diagramas/
│   └── respaldo/
│
├── docs/
│   ├── requerimientos/
│   ├── manuales/
│   └── versiones/
│
├── tests/
│   ├── unit/
│   ├── integration/
│   └── visual/
│
├── .github/
│   ├── workflows/
│   ├── CODEOWNERS
│   └── PULL_REQUEST_TEMPLATE.md
│
├── .env.example
├── .gitignore
├── README.md
├── LICENSE
└── requirements.txt
```

---

## ⚙️ Instalación local

### 🔧 Requisitos previos

- Python 3.10+
- MySQL (XAMPP o servicio local)
- Git + pip
- Editor (VSCode recomendado)

---

### 🧪 Clonar el repositorio

```bash
git clone https://github.com/tu_usuario/sgpcmd.git
cd sgpcmd
```

---

### 🐍 Crear entorno virtual

```bash
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
```

---

### 📦 Instalar dependencias

```bash
pip install -r requirements.txt
```

---

### 🔐 Configurar variables de entorno

1. Copia `.env.example` → `.env`
2. Llénalo así:

```env
FLASK_APP=backend/app.py
FLASK_ENV=development
SECRET_KEY=clave_super_segura
DATABASE_URL=mysql+pymysql://root:password@localhost/sgpcmd
```

---

### 🧱 Inicializar base de datos

```bash
flask db init
flask db migrate -m "Migración inicial"
flask db upgrade
```

---

### ▶️ Ejecutar el sistema

```bash
flask run
```

Abre el navegador en: [http://localhost:5000](http://localhost:5000)

---

## 🧪 Ejecutar pruebas

```bash
pytest tests/
```

---

## 👥 Equipo de desarrollo

| Nombre               | Rol técnico principal                                              |
|----------------------|--------------------------------------------------------------------|
| Cristian Hernández   | Líder técnico general del proyecto, revisión de código, fullstack  |
| Diego Ruiz           | Responsable de testing unitario, de integración y pruebas visuales |
| Valeria Bohórquez    | Desarrollo de interfaz, vistas HTML/Bootstrap y JS modular         |
| Venjamín Novoa       | Desarrollo backend: rutas, modelos, servicios y validaciones       |

---

## 📜 Licencia

Este proyecto está licenciado bajo la [Licencia MIT](LICENSE).  
Puedes usarlo, modificarlo y distribuirlo libremente.

---

## 🛡️ Buenas prácticas activadas

- Arquitectura real tipo MVC
- Seguridad: JWT, cabeceras, validación, decoradores
- Control de cambios en BD con migraciones
- División modular por responsabilidad (servicios, controladores, modelos)
- Pruebas unitarias y de integración
- Trazabilidad documental (RF, CU, WF)
- CI con GitHub Actions y revisión vía PR

---

## 📌 Estado actual del proyecto

- 🔨 En fase activa de desarrollo
- 📁 Estructura técnica completa
- 📄 Requerimientos funcionales y manuales en construcción
- ⏳ Entrega proyectada:  Diciembre 2025