# Cliclo de vida de un contenedor

 Para ejecutar un proceso o un comando en un contenedor ya existente

- Ejemplo:
  - **docker run ubuntu tail -f /dev/null** —> Para no ejecutar el comando por defecto, le podemos decir que se ejecute y no se apague. La terminal se queda congelada.
  - Abrir otra terminal
  - **docker ps** —> para obtener nombre
  - **docker exec -it <nombre contenedor> bash** —> **Exec** es para ejecutar un comando en un contenedor existente. **-it** para que sea de forma interactiva.
  - **ps** —> En linux se pueden ver los procesos con ps, solo los de mi sesión.
  - **ps -fea** —> Para ver procesos de todas las sesiones. Docker siempre por defecto le asigna el PID (ID del proceso) 1 al comando que corre con el contenedor, ahi esta la clave de cuando se apaga el contenedor. Todo contenedor tiene un root COMMAND, cuando haga exit se va apagar el contenedor.
  - **exit** —> Salir del contenedor. Puedo hacer 2 cosas:
  - **docker rm -f <nombre contenedor>** Elima brutalmente el contenedor. El -f significa “Si esta corriendo no me importa”
  - **docker kill <nombre contenedor>** Manda una señal de matar el proceso.
  - Si un contenedor se apaga es porque hubo un error en el proceso rut e hizo exit o terminó de hacer lo que tenia que hacer.

Adicional :

- **docker pause** suspende todos los procesos en los contenedores especificados.
- **docker stop** El proceso principal dentro del contenedor recibirá SIGTERM, y después de un período de gracia, SIGKILL.

