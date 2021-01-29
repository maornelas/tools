# Creado por Marco Ornelas 

FROM node:12

# Definiendo directorio de trabajo del contenedor
WORKDIR /usr/src/app

# Agregando los archivos package de dependencias
COPY  package*.json ./

# Instalando todas las dependencias
RUN npm i

# Copia todo en el entorno Docker 
COPY . .

# Definiendo puerto de la aplicación
EXPOSE 80

# Ejecutamos la aplicación en Dev
CMD [ "node", "app.js" ,"env=development"]
