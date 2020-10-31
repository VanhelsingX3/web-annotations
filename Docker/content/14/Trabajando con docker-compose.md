# Docker-compose

**Detener contenedores en docker-compose**
`docker-compose down`
Para los contenedores y los borra incluyendo el network

**Entrar a un contenedor montado con docker-compose**
docker-compose exec <nombre del contenedor> bash
Ej: `docker-compose exec app bash`

**Ver logs de los contenedores montados con docker-compose**
`docker-compose logs`

**Para filtrar:**
docker-compose logs <keyword>
Ej: `docker-compose logs app`

**Ver el status de docker-compose**
`docker-compose ps`

**Ejecutar contenedores en segundo plano docker-compose**
`docker-compose up -d`
No muestra el output
-d —> detach Corre en segundo plano 

