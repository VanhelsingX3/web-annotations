# Docker

Problemáticas del desarrollo de software

**1. Construir** - Escribir código en ambiente del desarrollador

**Problemática:**

- Dependencias de desarrollo (packetes)
- versiones de entornos de ejecución (runtime)
- Equivalencia de entornos de desarrollo (compartir el código)
- Equivalencia con entornos productivos (pasar a producción)
- versiones/compatibilidad de 3rd party (integración con otros servicios ejem: base de datos)

**2. Distribuir** - Llevar la aplicación donde se va a desplegar

Problemática:

- Output de build heterogeo (múltiples compilaciones)
- Acceso a servidores productivos (No tenemos acceso al servidor)
- Ejecución nativa vs virtualizada
- Entornos Serverless

**3. Ejecutar** - Implementar la solución en el ambiente de producción
El reto Hacer que funcione como debería funcionar

**Problemática:**

- Dependencia de aplicación (paquetes, runtime)
- Compatibilidad de sistema operativo (sistema operativo poco amigable con la solución)
- Disponibilidad de servicios externos (Acceso a los servicios externos)
- Recursos de hardware (Capacidad de ejecución)

### ¿Qué es Docker?
**Docker** Permite resolver problemas de construir, distribuir y ejecutar software en diferentes plataformas.

**Containarization:** un estándar para llevar algo dentro. Agrupadores de procesos.

- **Versátiles:**
  En el orden de los MB
  Tienen todas las dependencias que necesitan para funcionar correctamente.
  Funcionan igual en todos lados.
- **Eficientes:**
  Comparten archivos simultáneos con otros contenedores.
  Solo se ejecutan procesos, no un SS.OO completo.
- **Aislados:**
  Lo que pasa en el container queda en el container.
  No pueden alterar su entorno de ejecución (a menos que explícitamente se indique lo contrario)

**Virtualization:** es una imagen o archivo que contiene información dentro. Por lo general son pesadas de administración costosa y son lentas.

- **Pesadas:**
  En el orden de los GB
  Muchas VMs en el mismo host suelen repetirse en lo que contienen
  Administración costosa:
  Una VM tiene que ser administrada como cualquier otra computadora: patching, update, etc
  Hay que administrar la seguridad interna entre apps
- **Lentas:**
  Correr nuestro código en una VM implica no solo arrancar aplicaciones, sino también esperar el boot de la VM en sí.