# Comprendiendo el sistema de capas

Para comprender la estructura de sus capas podemos verlo desde el archivo Dockerfile. En [hub.docker.com](http://hub.docker.com/) podemos ver éste archivo de las imágenes públicas.

- Con el comando: **docker history nombreImagen** -> podemos ver información acerca de las capas de la imagen.
- Con el flag “–no-trunc” del comando history podemos ver más detalles pero no es muy cómodo para ver la información.
- Opción cómoda: https://github.com/wagoodman/dive

```bash
wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb
sudo apt install ./dive_0.9.2_linux_amd64.deb
```

- Las capas de docker son inmutables, cada cambio en la imagen se trata como una capa nueva.

 
