#!/bin/bash

# Script de despliegue para Quiniela App
# Este script facilita el proceso de subida a GitHub

echo "🚀 Iniciando proceso de despliegue..."

# Verificar si Git está inicializado
if [ ! -d ".git" ]; then
    echo "📁 Inicializando repositorio Git..."
    git init
fi

# Agregar todos los archivos
echo "📦 Agregando archivos al staging..."
git add .

# Commit de los cambios
echo "💾 Creando commit..."
git commit -m "feat: Configuración inicial con Docker y documentación

- Agregado Dockerfile para containerización
- Agregado docker-compose.yml para desarrollo
- Agregado .dockerignore y .gitignore
- Agregado README.md con documentación completa
- Agregado LICENSE MIT
- Configuración para Selenium con Chrome
- Volúmenes para logs y recursos"

# Verificar si ya existe un remote origin
if git remote get-url origin > /dev/null 2>&1; then
    echo "🔄 Remote origin ya existe"
else
    echo "⚠️  No se encontró remote origin"
    echo "📝 Por favor, crea un repositorio en GitHub y ejecuta:"
    echo "   git remote add origin https://github.com/TU_USUARIO/TU_REPO.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
fi

echo "✅ Proceso completado!"
echo ""
echo "📋 Próximos pasos:"
echo "1. Crea un repositorio en GitHub"
echo "2. Ejecuta: git remote add origin https://github.com/TU_USUARIO/TU_REPO.git"
echo "3. Ejecuta: git branch -M main"
echo "4. Ejecuta: git push -u origin main"
echo ""
echo "🐳 Para probar con Docker:"
echo "   docker-compose up --build" 