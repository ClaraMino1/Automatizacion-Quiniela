# Imagen base con soporte suficiente para Chrome
FROM python:3.11-slim-buster

#  directorio de trabajo
WORKDIR /app

#  dependencias para Chrome, Selenium, Pillow
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    unzip \
    fonts-liberation \
    libnss3 \
    libxss1 \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libgbm1 \
    libxshmfence1 \
    xdg-utils \
    xvfb \
    curl \
    fonts-dejavu-core \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Instalar Google Chrome estable
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*

# Copiar requirements y luego instalar 
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar chromedriver manualmente y dar permisos
COPY bin/chromedriver /usr/local/bin/chromedriver
RUN chmod +x /usr/local/bin/chromedriver

# Copiar todo el código de la app
COPY . .

# Crear directorio de logs
RUN mkdir -p logs

# Exponer puerto Flask
EXPOSE 5000

# Variables de entorno
ENV FLASK_APP=run.py
ENV FLASK_ENV=production
ENV PYTHONUNBUFFERED=1
ENV CHROMIUM_PATH=/usr/bin/google-chrome

# Ejecutar aplicación
CMD ["python", "run.py"]
