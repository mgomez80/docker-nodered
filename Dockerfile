# FROM nodered/node-red:latest
FROM nodered/node-red:3.1

# Copiar los archivos del proyecto
COPY package.json /data/

# Instalar las dependencias
RUN cd /data && npm install

# Exponer el puerto 1880
EXPOSE 1880

# Comando para iniciar Node-RED
CMD ["npm", "start", "--prefix", "/data"]

