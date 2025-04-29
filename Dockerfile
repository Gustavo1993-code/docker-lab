# Usa la imagen oficial de Nginx como base
FROM nginx:latest

# Instalar git para clonar el repositorio
RUN apt-get update && apt-get install -y git

# Eliminar los archivos predeterminados de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Clonar el repositorio con el contenido de la página web
RUN git clone https://github.com/jairojumbo/formulario-react.git /usr/share/nginx/html

# Exponer el puerto 80 (puerto por defecto de Nginx)
EXPOSE 80
