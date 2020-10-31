 # Usando docker para desarrollar aplicaciones

**FROM** node:8 

**COPY** [“.", "/usr/src/"] 

// [<ubicacion de los archivos a copiar>, <destino donde van a quedar los archivos copiados>] 

**WORKDIR** /usr/src 

// es similar al comando cd, WORKDIR <entrar en la siguiente ruta>  

**RUN** npm install 

// RUN ejecuta el comando npm install  

**EXPOSE** 3000 

// Le indica al contenedor el puerto por el cual va a salir o exponer el contenedor, es el mismo puerto por donde esta escuchando node 

**CMD** ["node", "index.js"] 

//Ejecuta el comando node index.js el cual levanta el servidor de express

**Construimos la imagen
**`docker build -t platziapp .`

**Destruimos la imagen al finalizar**

`docker run --rm -p 3000:3000 platziapp`