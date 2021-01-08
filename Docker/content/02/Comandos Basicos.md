# Comandos Basic

- Listar contendores en ejecución
  `docker ps`
- Listar todos los contenedores
  `docker ps -a`
- Cargar / Ejecutar una imagen de contenedor
  `docker run [image]`
  Imagino q “image” es la fuente del contenedor.
- Cargar / Ejecutar una imagen de contenedor con un nombre específico
  `docker run --name [name a asignar] [image]`
- Ver metadata de un contenedor
  `docker inspect [name/id contenedor]`
- Ver un dato exacto de la metadata de un contenedor:
  `docker inspect -f '{{ json .Config.Env }}' [name/id]`
  Aquí se utiliza el template de filtro del leguaje GO q es el lenguaje en q fue programado DOCKER.
- LINUX … ver el path
  `echo $PATH`
- Cambiar el nombre de un contendor descargado
  `docker rename [name actual] [name nuevo]`
- Ver las salidas de contenedores ya ejecutados o cargados
  `docker logs [name/id]`
- Obtener como salida sólo los ID de los contendores cargados
  `docker ps -aq`
- Eliminar / Desmantelar contenedores
  `docker rm [name/id]`
- Para eliminar/desmantelar todos los contenedores cargados, utilizamos el comando que nos genera la salida de todos los ID de contendores cargados dentro de un docker rm y el comando quedaría así:
  `docker rm $(docker ps -aq)`