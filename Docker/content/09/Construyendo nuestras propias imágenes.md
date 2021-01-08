**Crear nuestras imágenes**

1. Crear el archivo `Dockerfile` (receta)
2. El `dockerfile` siempre debe empezar con el `FROM` le indicamos cual va a ser nuestra imagen base para empezar
3. `RUN` para correr un comando
4. Creamos un archivo touch /usr/src/hola-mundo
5. Construimos el `dockerfile`
6. docker build -t <imagen>:<tag de la imagen> <path de donde vamos a obtener el contexto build, para este caso .

`-t` es el nombre del tag de la imagen

```
Ej: 
FROM ubuntu
RUN touch /usr/src/hola-mundo
```

**Consola:**


```
docker build -t ubuntu:platzi .
```



**Hacer push a un contenedor**
docker push <tag contenedor>
Ej: `docker push <user>/ubuntu:platzi`

**Cambiar el tag de un contenedor**
docker tag <tag contenedor> <nuevo tag contenedor>
Ej: `docker tag ubuntu:platzi <user>/ubuntu:platzi` 

Antes de ejecutar el docker push, se debe ingresar en docker hub con el siquiente comando: **docker login**

