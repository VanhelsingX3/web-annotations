# Exponiendo contenedores al mndo exterior 

Ejemplo de como correr un servidor nginx:

- **docker run --detach --name server nginx**
- **-d** ó **--detach** —> Si el contenedor que voy a ejecutar tiene un proceso que tiene output y/o pretende correr en modo interactivo, lo va omitir, me va dar el control de la terminal.
- Después de ejecutar el proceso, el ultimo número largo que aparece en la terminal esta en formato *SHA*, lo usa docker para generar los números de *IDs* únicos.
- El *ID* del contenedor son los primeros números del *SHA*.
- Aparece PORTS (Esta exponiendo un puerto para que se comuniquen con el).
- Los contenedores también están aislados a nivel de red. El que un contenedor tenga un puerto abierto no implica que ese puerto este abierto en la maquina esperando por conexiones hacia ese contenedor. Lo que tenemos que hacer es decirle explícitamente que desde tal puerto de mi computadora vaya hacia el puerto del contenedor.
- **docker run -d --name server -p 8080:80 nginx**
- **-p** —> esta bandera es para atar los puertos. Primero el de mi maquina y después el del contenedor.
- Ahora en PORTS aparece que puerto de mi maquina está dirigiendo hacia el puerto del contenedor.
- En el navegador localhost:8080 y ya puedo ver nginx.
- No puedo asignar más de un contenedor a un mismo puerto.