# EMMET

Es un plugin que nos sirve para desarrollar código HTML  y CSS de manera rápida mediante un pseudocódigo.

Al escribir:

> html:5

ó 

> !

Al presionar la tecla tabulador ó enter se genera la siguiente estructura:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emmet</title>
</head>
<body>

</body>
</html>
```

También podemos generar más etiquetas como:



> header

```html
<header></header>
```

> main

```html
<main></main>
```

> footer

```html
<footer></footer>
```





## Emmet - Elementos Hermanos

También para no escribir una a una las etiquetas se puede simplificar usando el signo '+' por ejemplo:



> header+main+footer

```html
<header></header>
<main></main>
<footer></footer>
```





## Emmet - Elementos hijos

Se utilizan elementos hijos con el operador '>' y sirve para determinar que hay unos elementos que van por dentro de otros, por ejemplo:



> main>section>article

```html
    <main>
        <section>
            <article></article>
        </section>
    </main>
```



## Emmet - Salir de una cadena

Se utiliza para salir o bajar un nivel en el código, por ejemplo:



Si usaramos la siguiente sintaxis, lo que crearía seria un elemento al par de article

> main>section>article+footer

```html
    <main>
        <section>
            <article></article>
            <footer></footer>
        </section>
    </main>
```



Pero lo que realmente queremos es crearlo al final para eso usaremos '^'

Ahora en la siguientes sintaxis veremos como bajar al nivel deseado.



> main>section>article^footer

```html
    <main>
        <section>
            <article></article>
        </section>
        <footer></footer>
    </main>
```

> main>section>article^^footer

```html
    <main>
        <section>
            <article></article>
        </section>
    </main>
    <footer></footer>
```





## Emmet - Elementos multiplicados

Para indicar los elementos multiplicados usaremos '*' para que se multipliquen a lo que necesitemos.



> main>section>article>ul>li*5

```html
    <main>
        <section>
            <article>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </article>
        </section>
    </main>
```





## Emmet - Elementos Agrupados

Podemos encerrar entre paréntesis ciertas partes de la expresión para tener un determinado resultado:



**Sin paréntesis:**

> div>dl>dt+dd*3+footer>p

```html
    <div>
        <dl>
            <dt></dt>
            <dd></dd>
            <dd></dd>
            <dd></dd>
            <footer>
                <p></p>
            </footer>
        </dl>
    </div>
```

**Con paréntesis:**

> (div>dl>dt+dd*3)+footer>p

```html
    <div>
        <dl>
            <dt></dt>
            <dd></dd>
            <dd></dd>
            <dd></dd>
        </dl>
    </div>
    <footer>
        <p></p>
    </footer>
```

Pero como puedes ver tenemos un problema y es que la lista de definición no está bien estructurada por lo que agregaremos más paréntesis para que se pueda multiplicar de forma adecuada.



> (div>dl>(dt+dd)*3)+footer>p

```html
    <div>
        <dl>
            <dt></dt>
            <dd></dd>
            <dt></dt>
            <dd></dd>
            <dt></dt>
            <dd></dd>
        </dl>
    </div>
    <footer>
        <p></p>
    </footer>
```





## Emmet - Elemento ID & CLASS

En Emmet se pueden agregar elementos ID y Class directamente sin necesidad de escribir el atributo concretamente.



Para crear ID usaremos '#'

Para crear class usaremos '.'



Si escribimos:

> #algo

```html
<div id="algo"></div>
```

Por defecto me creara un elemento div con el atributo ID + el nombre que agregamos.



Si escribimos:

> .otro

```html
<div class="otro"></div>
```

Por defecto me creara un elemento div con el atributo class + el nombre que agregamos.



> header#algo+main.otro

```html
<header id="algo"></header>
<main class="otro"></main>
```



> header#algo.mas

```html
 <header id="algo" class="mas"></header>
```





## Emmet - Etiquetas implícitas

Podemos omitir algunas etiquetas, ya que Emmet las toma como implícitas:



> p>#otro

```html
<p><span id="otro"></span></p>
```

> ul>.item

```html
    <ul>
        <li class="item"></li>
    </ul>
```

> table>.fila>.columna

```html
    <table>
        <tr class="fila">
            <td class="columna"></td>
        </tr>
    </table>
```





## Emmet - elementos con atributos

Para agregar atributos a nuestros elementos usaremos '[]'



> a[href title target]

```html
<a href="" title="" target=""></a>
```

También podemos agregar valor a nuestros atributos de la siguiente forma:



> a[href=https://github.com/VanhelsingX3/web-annotations title="Anotaciones web" target=_blannk]

```html
<a href="https://github.com/VanhelsingX3/web-annotations" title="Anotaciones web" target="_blannk"></a>
```





## Emmet - Elementos Enumerados

Si se van a repetir elementos dentro del html se pueden enumerar usando '$$'



> #div$*5

```html
    <div id="div1"></div>
    <div id="div2"></div>
    <div id="div3"></div>
    <div id="div4"></div>
    <div id="div5"></div>
```



> #div$$*5

```html
    <div id="div01"></div>
    <div id="div02"></div>
    <div id="div03"></div>
    <div id="div04"></div>
    <div id="div05"></div>
```





## Emmet - Agregar texto

Se puede agregar texto dentro de las etiquetas por medio de '{}'



> p{Párrafo}

```html
    <p>Párrafo</p>
```



> p{Párrafo número $}*5

```html
    <p>Párrafo número 1</p>
    <p>Párrafo número 2</p>
    <p>Párrafo número 3</p>
    <p>Párrafo número 4</p>
    <p>Párrafo número 5</p>
```



# Bibliografía

Visita [Emmet Documentation](https://docs.emmet.io/) para saber más, en estas anotaciones se resume los aspectos más importantes de este plugin.
