# Imágenes



Las imágenes son un componente fundamental de Docker y sin ellas los contenedores no tendrían sentido. Estas imágenes son fundamentalmente plantillas o templates.

Algo que debemos tener en cuenta es que las imágenes no van a cambiar, es decir, una vez este realizada no la podremos cambiar.

Cada capa es una pequeña diferencia con la anterior, funciona algo similar a git.

**Traer una imagen**

```bash
docker pull <repositorio>:<versión>
```

**Listar imágenes**

Este comando nos muestra el repositorio al que pertenece, su tag, la versión, su id, la fecha de creación y su peso.

```bash
docker image ls
```

**Eliminar una imágen**

```bash
docker image rm <nombre>
```

- Las imágenes al componerse de capas, conforme las versiones de una imagen progresen lo único que bajara docker serán las capas nuevas.
   
- Si una capa existe en nuestro sistema no la baja.
   
- Si creamos una imagen nueva con capas que ya existen, docker solo crea una referencia lógica a estas capas.

 
