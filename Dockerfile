# Usar imagen base de nginx
FROM nginx:alpine

# Crear directorio para la aplicación
WORKDIR /usr/share/nginx/html

# Copiar archivos de la aplicación
COPY index.html .
COPY rango.js .
COPY logo-transparent.png* ./

# Copiar script de inicio personalizado
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Exponer puerto por defecto
EXPOSE 80

# Usar script personalizado como entrypoint
ENTRYPOINT ["/start.sh"]