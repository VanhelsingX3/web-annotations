# Manejo de Docker Volume

Esto es similar a montar un directorio de un contenedor en un directorio externo, pero de alguna menera se crea automáticamente en un directorio gestionado por docker y en donde otro proceso de la PC no debería poder ingresar.
El directorio en donde se guardan automáticamente estos volúmenes es en: _ /bar/bin/docker/volume_
Cada ejecución de un contenedor genera un volumen.

- Listar todos los volúmenes creados

```bash
docker volume ls
```

- Para poder borrar los volúmenes que no están asociados a ningún contenedor en ejecución

```bash
docker volume prune
```

- Creación de un volumen.

```bash
docker volume create dbdata
```

- Para poder asociar el directorio de un contenedor a un volumen se utiliza el parámetro --mount, luego src para indicar el volumen donde se guardará la información, y luego dst para indicar el destino o directorio del contenedor que se montará en el volumen indicado en src

```bash
docker run -d --name db --mount src=dbdata,dst=/data/db mongo
```

Una vez ejecutado nuevamente mongo con el nombre de db sobre el volumen dbdata, volver a ejecutar un bash dentro del contenedor y probar nuevamente la creación de datos en mongo.

Crear un volumen con un tamaño especifico:

```
docker volume create --driver local \
    --opt type=tmpfs \
    --opt device=tmpfs \
    --opt o=size=100m,uid=1000 \
    nombredelvolumen
```

