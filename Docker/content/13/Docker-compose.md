

# Docker compose

crear el archivo `docker-compose.yml`
`Dockerfile` = describer de manera imperativa (paso a paso) la arquitectura de nuestra aplicación
`docker-compose.yml` = describir de forma declarativa la arquitectura de nuestra aplicación

```yaml
version:"3"
 
services:
  website:                          # Nombre contenedor
    image: my_app                   # Nombre de la imagen
    environment:                    # Variables de entorno
      NODE_ENV:"test"
    depends_on:                     # website se inicia después del contenedor "db"
      - db
    build:
      context: .
      dockerfile: test.Dockerfile   # archivo Dockerfile que utilizara para hacer build
    ports:                          # puertos
      - "3000:3000"
  db:                               # Nombre contenedor
    image: mongo_test_db            # Nombre de la imagen
docker-compose up para crear el build de la imagen
```

Actualmente Docker-compose ya está disponible para Linux en 64 bits

**PASOS DE INSTALACIÓN **

1. ABRIR UN TERMINAL
2. ESCRIBIR EL SIGUIENTE COMANDO

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

Nota: Si el comando `docker-compose` falla después de la instalación, verifique su ruta. También puede crear un enlace simbólico a `/ usr / bin` o cualquier otro directorio en su ruta.

Por ejemplo: 

```bash
docker-compose --version
```

Otra configuración:

```yaml
version: "3"

services:
  node:
    image: node-app
    environment:
      MONGO_URL: "mongodb://db:27017/test"
    depends_on:
      - db
    ports:
      - 4000:3000
    volumes:
      - /home/$USER/dockerizeNode:/app
    networks:
      - nodenet

  db:
    image: mongo
    volumes:
       - db-data:/data/db
    networks:
      - nodenet

volumes:
  db-data:

networks:
  nodenet:
```

