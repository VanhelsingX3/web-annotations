# Datos en Docker

**Primera ejecución de Mongo sin persistir datos en disco, sólo en el contenedor**

- Levantando contenedor de Base de Datos Mongo ignorando los inputs que pueda generar la ejecución de dicho contenedor (-d). Se colocará al contendor el nombe de **db**. Esto descargará el contenedor de la internet.

```bash
docker run -d --name db mongo
```

- Visualizar los logs generados al momento de ejecutar

```bash
docker logs db
```

- Ejecutamos un bash (una consola para Linux) dentro del contendedor db (mongo). Esto nos muestra que cada proceso ejecutado necesita de algunos procesos Linux, y sobre esos procesos Linux se ejecuta, en este caso, el Mongo. Todos estos procesos, tanto de Linux como de Mongo, están dentro del contenedor levantado db.

```bash
docker exec -it db bash
```

- Ya dentro del bash ingresamos al proceso (cliente mongo en modo bash/consola) *mongo*.
- Creación (dentro del cliente mongo) de un usuario

```bash
use platzi
```

- Insertar un usuario en mongo

```bash
db.users.insert({ "name": "Jenson"})
```

- Listar los usuarios ingresados

```bash
db.users.find()
```

- Ahora saldremos del cliente con *exit*, y de la misma manera, saldremos del bash del contenedor.
- “Matar” el contenedor mongo.

```bash
docker rm -f db
```

- Volvemos a ejecutar un nuevo contenedor de mongo con el mismo nombre db
- Ingresar al bash del contenedor db, y luego a mongo (desde el bash)
- Luego, crear usuario platzi y buscar los datos. No hay datos ya que, cuando se “mató” el contenedor anterior, se fue con toda la información generada.

**Segunda ejecución… persistiendo la data en el disco duro, fuera del contenedor**

- Borramos contenedor de mongo q está en ejecución

```bash
docker rm -f db
```

**ahora un poco de Linux**

- Creación de un directorio/carpeta en donde se guardará la data generada por mongo

```bash
mkdir mongodata
```

Este directorio es creado en la misma ubicación desde donde ejecuta docker.
Para ver la ruta completa del lugar de dónde se está ejecutando docker (q es el directorio en donde se creó también el nuevo directorio, mongodata) utilizamos:

```bash
pwd
```

El resultado obtenido lo utilizaremos para dar la ruta completa para hacer el montaje del directorio usado dentro del contenedor, sobre el directorio recientemente creado fuera del contenedor.

**Volvemos ahora a docker**

- Ejecutaremos ahora nuevamente el contendor de mongo, con el nombre *db*, pero además se agregará el parámetro -v para realizar el montaje: en primera instancia va el directorio externo donde se montará el directorio interno, y después de los dos puntos (😃 se coloca el directorio interno q será montado en el directorio externo

```bash
docker run --name db -d -v /Users/gvilarina/Dev/platzi/mongodata:/data/db mongo
```

- Verificar si el contendor ejecutado ya está dejando sus archivos en el directorio externo (comando linux)

```bash
ls mongodata
```

- Luego de esto, repetir la creación de usuario, la inserción de datos, luego salir del bash, salir del contenedor, ,matar el contenedor, volver a levantanr el contenedor. verificar q la data esté allí.
  **La desventaja de esta manera de persistir la información, es que, si por alguna razón, un proceso externo juega dentro del directorio creado para guardar la data de mongo, puede q este juego altere mi información.**

 