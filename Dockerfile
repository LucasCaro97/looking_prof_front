# Usa una imagen base de nginx
FROM nginx

# Copia los archivos estáticos del build del proyecto React al directorio de nginx
COPY ./build /usr/share/nginx/html

# Expón el puerto 80
EXPOSE 80

# Comando para iniciar nginx cuando se ejecute el contenedor
CMD ["nginx", "-g", "daemon off;"]