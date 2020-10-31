# Docker Networking

**Borrar una redes en docker**
docker network rm <nombre de la red>
Ej: `docker network rm platzinet`

**Crear una redes en docker**
docker network create --attachable <nombre de la red>
—attachable es para que otros contenedores se puedan unir a esta red
Ej: `docker network create --attachable platzinet`

**Ver redes disponibles docker**
`docker network ls`
`bridge` red por defecto y se conectan con un keyword `link` esta en desuso, compatibilidad (deprecated)
`host` simula la red del computador que corre docker (no usar)
`none` hacer que tenga el network desabilitado

**Ver contenedores en un red**
docker network inspect <nombre de la red>
Ej: `docker network inspect platzinet`
Detallar la busqueda
`docker network inspect -f '{{.Containers}}' platzinet`

**Unir un contenedor a la red creada**
docker network connect <nombre de la red> <nombre del contenedor>
Ej: `docker network connect platzinet db`
`docker run -d --name app -p 3000:3000 --env MONGO_URL=mongodb://db:27017/test platziapp`

`-env` variable de entorno
db es el nombre del contenedor sin necesidad de pasar la ip del contenedor para la conexión

```
FROM node:latest
WORKDIR /usr/src
COPY *.json /usr/src/
RUN npm install
COPY . /usr/src/
ENV MONGO_URL=mongodb://platzi/test
EXPOSE 3000
CMD npx nodemon index.js
```

Redes por defecto en docker:

- bridge: red por defecto, o red puente, se solia usar con la instrucción link, la cual permitia enlazar contenedores a travez de la red. Sin embargo esta red esta en desuso.
- host: **ADVERTENCIA** el uso de esta interfaz es de cuidado. Permite que el contenedor use la red por defecto de la maquina host. Es sensible a que si el contendor abre algun puerto, esto se ve replicado en la maquina host, generando asi posibles vulnerabilidades.
- none: es similar al dev/null o hoyo negro de los sistemas unix. En este caso nos permite especificar que el contenedor no tiene salida o permiso para acceder o ser accedido por red.