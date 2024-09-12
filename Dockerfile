# Imagen base de Python
FROM python:3.9-slim

# Crear y establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instalar las dependencias de Python
RUN pip install -r requirements.txt

# Exponer el puerto 5000 para Flask
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]


