Descargando Ubuntu

**docker run ubuntu** 

El problema de ese comando es que no lo hará de forma interactiva con la terminal entonces realizaremos lo siguiente:

- **docker run -it ubuntu** —> Com esto le decimos que corra el comando pero que lo haga de forma interactiva con mi terminal. Así el estado del contenedor no será apagado sino prendido.
- *ls -lac* —> Puedo ver los archivos, para comprobar que estoy en un linux.
- *uname -a* —> para saber los detalles.
- *cat /etc/lsb-release* —> La data de que linux estamos corriendo.
- **exit** —> matando sesión del contenedor y de esta forma el estado cambio a Exited.
- Después de cerrar ya no consume recursos.

El significado de las flags `-it`:

- -t: Asignar un pseudo-tty (Terminal).
- -i: mantén STDIN abierto incluso si no está conectado.

Un dato adicional es que cuando creas el contenedor con el comando:

**docker run -it ubuntu**

Entras al contenedor, configuras y juegas con lo que necesites y luego te sales con **exit**. Pero luego quieres volver a entrar a ese conenedor. Ya no podrás hacerlo porque ese conentedor se ha quedado sin un *entrypoint* expresamente definido, lo que significa que al intentar volver a iniciar el contenedor **docker start ubuntu** este se inicia pero no se mantiene encendido porque no hay *entrypoint*.
Para crear un contenedor al que puedas entrar y salir todo lo que quieras se debe definir expresamente un *entrypoint* como */bin/bash* usando por ejemplo el siguiente comando:
**docker run -it --entrypoint /bin/bash --name ubuntu ubuntu:latest** 

