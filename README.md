# WineSpa API - Sistema de Gestión de Spa

## Descripción

Este proyecto es un backend desarrollado en Django para la gestión de un sistema de spa con múltiples modelos de negocio. 
Incluye funcionalidades para manejar proveedores, clientes, usuarios, manicuristas, insumos, roles, citas, servicios y otros elementos del negocio.
La API está desplegada en Vercel y utiliza Supabase como base de datos PostgreSQL.

## Tecnologías usadas

- Python 3.8+
- Django 5.2
- PostgreSQL (Supabase)
- Django REST Framework
- JWT Authentication
- Vercel (Despliegue)
- Supabase (Base de datos)
- Swagger/OpenAPI (Documentación)
  
# Requisitos Previos

- Python 3.8 o superior instalado
- Git instalado
- Entorno virtual (opcional pero recomendado)
- Django instalado en el entorno virtual o globalmente

## Cómo desplegar el proyecto

- Intalar requerimientos:
   + pip install -r requirements.txt
  
- Hacer las migraciones:
    + python manage.py makemigrations
    + python manage.py migrate


## 🚀 API en Vivo

**URL Base:** `https://tu-proyecto.vercel.app`

### 📚 Documentación de la API

- **Swagger UI:** `https://tu-proyecto.vercel.app/api/docs/`
- **ReDoc:** `https://tu-proyecto.vercel.app/api/redoc/`
- **Schema JSON:** `https://tu-proyecto.vercel.app/api/schema/`

### 🔗 Enlaces de Prueba

- **Postman Collection:** [Importar colección de Postman](https://tu-proyecto.vercel.app/api/schema/)
- **Swagger Online:** [Probar API en Swagger](https://tu-proyecto.vercel.app/api/docs/)

## 🛠️ Instalación Local

### Como iniciar el entorno virtual
```bash
python -m venv venv
```

### En Windows
```bash
.\venv\Scripts\activate
```

### En Linux/Mac
```bash
source venv/bin/activate
```

### Instalar dependencias
```bash
pip install -r winespa/requirements.txt
```

### Configurar variables de entorno
Crear archivo `.env` en la raíz del proyecto:
```env
DEBUG=True
SECRET_KEY=tu-secret-key-aqui
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=tu-password-supabase
DB_HOST=tu-host-supabase
DB_PORT=5432
```

### Aplicar migraciones
```bash
python winespa/manage.py makemigrations
python winespa/manage.py migrate
```

### Ejecutar servidor local
```bash
python winespa/manage.py runserver
```

## 🧪 Pruebas Unitarias

Este proyecto incluye pruebas unitarias para las siguientes clases de modelo:

- Proveedor
- Cliente
- Manicurista
- Insumo
- Usuario

### Ejecutar pruebas específicas:
```bash
python winespa/manage.py test api.tests.test_proveedor
python winespa/manage.py test api.tests.test_cliente
python winespa/manage.py test api.tests.test_manicurista
python winespa/manage.py test api.tests.test_insumo
python winespa/manage.py test api.tests.test_usuario
```

### Ejecutar todas las pruebas:
```bash
python winespa/manage.py test
```

## 📋 Endpoints Principales

### Autenticación
- `POST /api/auth/login/` - Iniciar sesión
- `POST /api/auth/register/` - Registro de usuario
- `POST /api/auth/refresh/` - Renovar token

### Gestión de Clientes
- `GET /api/clientes/` - Listar clientes
- `POST /api/clientes/` - Crear cliente
- `GET /api/clientes/{id}/` - Obtener cliente
- `PUT /api/clientes/{id}/` - Actualizar cliente
- `DELETE /api/clientes/{id}/` - Eliminar cliente

### Gestión de Citas
- `GET /api/citas/` - Listar citas
- `POST /api/citas/` - Crear cita
- `GET /api/citas/{id}/` - Obtener cita
- `PUT /api/citas/{id}/` - Actualizar cita
- `DELETE /api/citas/{id}/` - Eliminar cita

### Gestión de Servicios
- `GET /api/servicios/` - Listar servicios
- `POST /api/servicios/` - Crear servicio
- `GET /api/servicios/{id}/` - Obtener servicio
- `PUT /api/servicios/{id}/` - Actualizar servicio
- `DELETE /api/servicios/{id}/` - Eliminar servicio

## 🔧 Despliegue

### 🚀 Despliegue en Render (Recomendado)

1. **Conectar repositorio a Render:**
   - Ve a [render.com](https://render.com)
   - Conecta tu cuenta de GitHub
   - Selecciona este repositorio

2. **Configurar servicio web:**
   - **Build Command:** `pip install -r winespa/requirements.txt && python winespa/manage.py migrate`
   - **Start Command:** `python winespa/manage.py runserver 0.0.0.0:$PORT`
   - **Python Version:** 3.11

3. **Variables de Entorno en Render:**
   ```
   DEBUG=False
   SECRET_KEY=tu-secret-key-django
   ALLOWED_HOSTS=tu-dominio.onrender.com
   ```

4. **Base de datos PostgreSQL:**
   - Render creará automáticamente una base de datos PostgreSQL
   - Las variables de conexión se configurarán automáticamente

### 🔧 Despliegue Manual

#### Variables de Entorno en Vercel
Configurar las siguientes variables en el dashboard de Vercel:

```
SECRET_KEY=tu-secret-key-django
DEBUG=False
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=tu-password-supabase
DB_HOST=tu-host-supabase.supabase.co
DB_PORT=5432
ALLOWED_HOSTS=tu-dominio.vercel.app
```

#### Comandos de despliegue
```bash
# Instalar Vercel CLI
npm i -g vercel

# Desplegar
vercel --prod
```

## 📝 Notas Importantes

- La API utiliza autenticación JWT
- Todas las respuestas están en formato JSON
- Se requiere token de autenticación para endpoints protegidos
- La documentación completa está disponible en `/api/docs/`
