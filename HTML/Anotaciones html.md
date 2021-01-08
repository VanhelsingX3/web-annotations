# HTML5

 Es un estandar que aúna 3 tecnologías. 

- **HTML** -> Estructura.
- **CSS** -> Apariencia.
- **JS** -> Interactividad & animación.

## Elementos HTML

Elementos de los cuales se compone un archivo html.

```
<!DOCTYPE html>
```

Manera de especificar ó de señalar que esta página web será programada en html5.

```html
<header>
```

Es un encabezado.

```html
<head>
```

Incluir información como: Hojas de estilo cascada (CSS), Archivos JS externos y internos, titulo, iconos, fuentes.

```html
<meta charset="iso-8559-1"/>
```

Determina el tipo de caracteres de la web.

```html
<meta name=""content=""/>
```

Especifica un nombre para los metadatos.

```html
<title>
```

Nombre de la web.

```html
<nav>
```

Es una barra de navegacion.

```html
<article>
```

Es un elemento de contenido unico.

```html
<section>
```

Son las divisiones de cualquier parte de la pagina.

```html
<aside>
```

Es contenido que no esta relacionado con el principal.

```html
<footer>
```

Para poner notas al pie.

```html
<link rel="shorcut icon" href="favicon.png">
```

Este nos permite colocar un icono en la pestaña del navegador.

## Encabezados

Es importante mantener la secuencia de los h1, h2, h3, h4, h5 y h6 por ejemplo no debemos usar h3 si no hemos usado h2 antes

```html
<h1>Encabezado 1</h1>
<h2>Encabezado 2</h2>
<h3>Encabezado 3</h3>
<h4>Encabezado 4</h4>
<h5>Encabezado 5</h5>
<h6>Encabezado 6</h6>
```

## Agrupacion de contenido

### Listas Anidadas

#### Desordenadas

```html
<ul>
    <li></li>
    <li></li>
</ul>
```
#### Ordenadas

```html
<ol>
    <li></li>
    <li></li>
</ol>
```
#### Listas de Definicion

```html
<dl>
    <dt></dt>
    <dd></dd>
</dl>
```
### Figure

Es un elemento que forma parte de nuestro contenido pero rompe con el flujo, por ejemplo una imagen que aparece en medio de una explicacion.

```html
<figure>
    <pre>
        <code>
            function hola(){
            return "hola"
        }
        </code>
    </pre>
    <figcaption> --descripcion opcional
        Declaracion de una funcion en Javascript
    </figcaption>
</figure>
```
### Main

Es donde debe ir el contenido mas importante de la pagina.

```html
<main>	
</main>
```
### hr

Es una linea horizontal que nos ayuda a romper la secuencia.

```html
<hr>
```

### pre

Significa preformateado, tal como hayas escrito el texto asi saldra en pantalla

```html
<pre></pre>
```

### blockquote

Esto nos ayuda para citar textos.

```html
<blockquote>	
</blockquote>
```
### div

Es un contenedor mayormente para que podamos hacer modificaciones con js o css

```html
<div></div>
```

### code

Esta etiqueta sirva para que escribamos codigo que se va a mostrar en la pagina.

```html
<code>
</code>
```

## Elementos en linea y de bloque

Un elemento de linea siempre deberia estar dentro de un elemento de bloque.

```html
<p>Este es un elemento de bloque</p>
<span>Este es un elemento de linea</span>
```

### Elementos de linea

```html
<small></small> Esto indica que un texto tiene menor importancia
<strong></strong> Esto indica que un texto es importante
<em></em> em Viene de enfasis
<cite></cite> Para citar un texto
<dfn></dfn> Para definir algo, dar una definicion
<code></code> Para escribir fragmentos de codigo
<data></data> Es para poner datos que vengan de algun programa o estadistica
```

## elementos de texto comunes

```html
<br> Para saltos de linea
<q></q> Es para citas, quotes
<abbr></abbr> Abreviacion
<del></del> Texto eliminado
<wbr> Wordbreak, sirve para cuando una palabra es muy larga y esta etiqueta va enmedio de esa palabra entonces en ese punto la palabra puede cortarse en ese punto al siguiente renglon
<span></span> Es un contenedor pero en linea
<i></i> Italica
<b></b> Negrita
<u></u> Subrayada

<sup></sup> Superindice
<sub></sub> Subindice
<time></time> Para horas, fechas
<mark></mark> Para marcar o destacar algunos elementos
<a href=""></a> Enlaces
```

## Enlaces

Tenemos dos tipos de enlaces: absolutos y relativos, los absolutos son una direccion del tipo https:.... los relativos son las carpetas.

```html
<a href="./carpeta/archivoHTML"></a> Entrando a la carpeta
<a href="../archivoHTML"></a> el "../" Indica que estamos saliendo de la carpeta
```

## Marcadores

Los marcadores me permiten moverme hacia un texto que haya especificado.

```html
<ul>
    <li><a href="#capitulo1"></a></li>
    <li><a href="#capitulo2"></a></li>
    <li><a href="#capitulo3"></a></li>
</ul>
```
```html
<p id="capitulo1">Capitulo 1</p>
<p id="capitulo2">Capitulo 2</p>
<p id="capitulo3">Capitulo 3</p>
```
### Marcadores hacia otra seccion de otra pagina

```html
<a href="./pagina.html#nombreMarcador"></a>
```

## Target

```html
<a href="pagina.html" target="_blank">Este enlace se abrira en otra pestaña</a>
```

## Indicadores

```html
<!--
min="0" indica un valor minimo que aceptara.
max="100" indica un valor máximo que aceptara.
high="90" indica un valor que se considera alto.
low="65" indica un valor que se considera bajo.
-->

<meter value="94" min="0" max="100" high="90"></meter> medir datos dentro de un rango dado.
```

Su etiqueta auxiliar es: <progress> realizan la misma función pero está es compatible con el navegador de IE.

```html
<progress value="94" min="0" max="100" high="90"></progress> medir datos dentro de un rango dado.
```

## imagenes

Existen dos tipos de imagenes:

- **Bitmap** mapa de bits o puntos
- **Vector (svg)** la imagen es dibujada con formulas matematicas es ideal para logotipos

En los bitmap tenemos:

- **jpg** este es ideal para fotografias.
- **png** este es ideal para colores planos, iconos con transparencia o graficos con texto.
- **webP** este formato es introducido por google pero solo soportado por Chrome, este busca remplazar a jpg y png pero siendo mas liviano.

Las imagenes se insertan con la etiqueta img

```html
<img src="" alt="">
```

- **src** es la ruta de nuestra imagen.
- **alt** texto alternativo a la imagen

Los SVG se insertan con la etiqueta svg

```html
<svg widht="" height="" xmlns="http://ww.w3.org/2000/svg"></svg>
```

*(Pexels, pagina de imagenes sin copyright)*

## viewport y device pixel ratio

Viewport es la cantidad de espacio que tenemos para diseñar nuestra pagina web.

Device pixel ratio es la relacion entre pixeles reales y pixeles del viewport.

```html
<img src="imagen.jpg" srcset="imagen2.jpg 1.5x, imagen3.jpg 2x">
```

srcset lo que hace es evaluar el device pixel ratio y en base a el elegir una imagen

## picture

Funciona igual que img con la diferencia que puede usar los media query de css.

```html
<picture>
    <source src="" type="">
    <source src="" type="">
    <source src="" type="">
</picture>
```
## semantica y microdatos

Los microdatos son atributos que le damos al contenido para definir que cosa es cada elemento.

Revisar la documentacion de [schema.org](https://schema.org/) para saber como aplicar los microdatos segun cada cosa.

## Herramienta de prueba de datos estructurados:

[Herramienta de prueba de datos estructurados](https://search.google.com/structured-data/testing-tool?hl=es)

Esto identificara si aplicamos bien los schemas.

[Open Graph](https://ogp.me/)

Es un protocolo que utiliza facebook para el manejo de informacion.

[Depurador de facebook](https://developers.facebook.com/tools/debug/)

Esto identificara si al compartir nuestra pagina web el contenido se visualizara correctamente al compartir el enlace en facebook.

## Tablas

```html
<table> -- etiqueta de la tabla
	<caption>Titulo de la tabla</caption> -- esta etiqueta es para colocar el titulo
	<thead>
		<tr> -- esto es una fila
			<th>esto es una celda de una cabecera</th>
		</tr>
	</thead>
	<tbody> -- cuerpo de la tabla
		<tr> -- esto es una fila
			<td> esto es una celda</td>
		</tr>
	</tbody>
	<tfoot> -- pie de la tabla
		<tr>
			<td></td>
		</tr>
	</tfoot>
</table>
```

### Agrupar celdas

Con el atributo colspan podemos definir cuantas celdas queremos cubrir

```html
<table>
	<tr>
		<td colspan=""></td>
	</tr>
</table>
```

### Agrupar filas

Con en el atributo rowspan podemos difinir cuantas filas queremos cubrir desde esa celda.

```html
<table>
	<tr>
		<td rowspan=""></td>
	</tr>
</table>
```

### coolgroup

Este nos permite poder hacer cambios especificamente a cada columna de la tabla, por si queremos por ejemplo aplicar un estilo CSS a una columna en especifico de la tabla.

```html
<colgroup>
	<col> columna 1 de la tabla
	<col> columna 2 de la tabla
	.
	.
	.
</colgroup>
```

## Formularios

```html
<form> -- etiqueta de formulario

	--forma 1
	<label for="nombre">Titulo del campo</label>
	<input type="text" id="nombre"> -- input de texto
	<input type="submit" value="Enviar">

	--forma 2
	<label> Titulo del campo
		<input type="text">
	</label>
	<input type="submit" value="Enviar">
</form>
```

El atributo placeholder de los inputs puede ayudarnos a omitir la colocacion de un label.

## Video y codecs html

El **codec H264** es el estandar de video en la web

El atributo **controls** habilita los controles de reproduccion

El atributo **autoplay** hace que el video se reproduzca solo

El atributo **poster** permite definir un poster inicial para el video (este poster debe ser una imagen) 

```html
<video src="video.mp4" controls autoplay poster="imagen.jpg"></video>
```

## Audio y reproductores de video recomendados

```html
<audio src="music.mp3" controls autoplay></audio>
```

> *video.js es un framework de js que nos ayuda a colocar un reproductor*
>
> *flowplayer una recomendacion de reproductor*

## Contenido interactivo en HTML

```html
<details> -- esta etiqueta mantiene un contenido que se puede desplegar (acordeon)
    <summary>Titulo del contenido interactivo</summary>
    <p>este texto aparecera al hacer clic en el titulo del contenido</p>
</details>
```
```html
<dialog id="modal"> -- esta etiqueta trata de simular una ventana modal
	<p></p>
</dialog>
```

El atributo open abre la ventana modal

Ejemplo de script para ejecutar la ventana modal:

```html
<script>
    const modal = document.getElementById('modal');
    const button = document.getElementById('button');
    button.addEventListener('click', ()=>{
    modal.setAttribute('open', 'true')
})
</script>
```

## Contenido embebido

```html
<iframe src=""></iframe> esta etiqueta permite traerse otra pagina a la nuestra
```

> *wufoo permite crear formularios y nosotros lo insertamos con iframe* 
>
> *disqus permite tener comentarios en tu pagina web*

## Como mantenerse actualizado

> La pagina de la [W3C](https://www.w3schools.com/html/)
>
> La pagina de [can i use](https://caniuse.com/) para saber en donde estan soportadas las funciones que queremos usar *pagina informativa excelente*
>
> Documentacion de la [MDN](https://developer.mozilla.org/es/docs/Web/HTML) (Mozilla Developer Network) *recomendada para mantenerse actualizado en web*
>

