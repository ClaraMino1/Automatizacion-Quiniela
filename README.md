# 🧾 Automatización Quiniela

Aplicación web desarrollada con **Flask** para una agencia de lotería provincial. Automatiza la obtención de los resultados de la quiniela y genera una imagen con diseño personalizado, lista para compartir o imprimir.

---

## 🚀 Características

- 🔄 **Actualización automática** de los resultados
- 🕐 **Filtrado por horario**: previa, primero, matutina, vespertina y nocturna
- 🖼️ **Generación automática de imágenes**
- 🌐 **Interfaz web simple e intuitiva**
- 🐳 **Containerización con Docker**
- 📝 **Sistema de logs completo**

---

## 🛠️ Tecnologías Utilizadas

- **Python + Flask** — Framework web
- **Selenium** — Para la extracción automatizada de datos
- **Pillow (PIL)** — Para generar imágenes con los resultados
- **Flask-Caching** — Sistema de caché
- **HTML/CSS** — Para la interfaz visual
- **Docker** — Containerización

---

## 🐳 Ejecutar con Docker

### Usando Docker Compose (Recomendado)

```bash
# Construir y ejecutar la aplicación
docker-compose up --build

# Ejecutar en segundo plano
docker-compose up -d --build

# Ver logs
docker-compose logs -f

# Detener la aplicación
docker-compose down
```

### Usando Docker directamente

```bash
# Construir la imagen
docker build -t quiniela-app .

# Ejecutar el contenedor
docker run -p 5000:5000 -v $(pwd)/logs:/app/logs quiniela-app
```

---

## 🌐 Acceso a la aplicación

Una vez ejecutada, la aplicación estará disponible en:
- **URL**: http://localhost:5000
- **Puerto**: 5000

---

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

---

## 🔧 Variables de entorno

Puedes configurar las siguientes variables de entorno:

- `SECRET_KEY`: Clave secreta para Flask (por defecto: 'dev')
- `CHROMIUM_PATH`: Ruta al ejecutable de Chrome
- `FLASK_ENV`: Entorno de Flask (development/production)

---

## 📝 Logs

Los logs se guardan en el directorio `logs/` y también se muestran en la consola.

---

## 🚀 Despliegue en producción

Para producción, se recomienda:

1. Cambiar `SECRET_KEY` por una clave segura
2. Configurar `FLASK_ENV=production`
3. Usar un servidor WSGI como Gunicorn
4. Configurar un proxy reverso (nginx)

---

## 🤝 Contribuir

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

---

## 🆘 Soporte

Si tienes problemas o preguntas, por favor abre un issue en GitHub.
