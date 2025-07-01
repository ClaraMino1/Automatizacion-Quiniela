# Automatización Quiniela

Aplicación web desarrollada con Flask para una agencia de lotería provincial. Automatiza la obtención de los resultados de la quiniela y genera una imagen con diseño personalizado, lista para compartir o imprimir.

## 🚀 Características

- Aplicación web Flask
- Web scraping con Selenium
- Procesamiento de imágenes con Pillow
- Sistema de caché con Flask-Caching


## 🐳 Ejecutar con Docker Usando Docker Compose


# Construir y ejecutar la aplicación
docker-compose up --build

# Ejecutar en segundo plano
docker-compose up -d --build

# Detener la aplicación
docker-compose down
```


## 📁 Estructura del proyecto

```
quiniela/
├── app/                    # Código principal de la aplicación
│   ├── __init__.py        # Configuración de Flask
│   ├── routes.py          # Rutas de la aplicación
│   ├── services/          # Servicios de negocio
│   ├── static/            # Archivos estáticos
│   └── templates/         # Plantillas HTML
├── logs/                  # Archivos de log
├── resources/             # Recursos (drivers, fonts, templates)
├── Dockerfile            # Configuración de Docker
├── docker-compose.yml    # Configuración de Docker Compose
├── requirements.txt      # Dependencias de Python
└── run.py               # Punto de entrada de la aplicación
```

## 🔧 Variables de entorno

Puedes configurar las siguientes variables de entorno:

- `SECRET_KEY`: Clave secreta para Flask (por defecto: 'dev')
- `CHROMIUM_PATH`: Ruta al ejecutable de Chrome
- `FLASK_ENV`: Entorno de Flask (development/production)
