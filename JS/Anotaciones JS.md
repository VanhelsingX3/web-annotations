# JavaScript

## Caracteristicas de JS

- Dinamicamente tipado
- Interpretado (navegador, servidor)
- Prototipado
- Multiparadigma

## Variables y Constantes

La forma de declarar variables y asignarles valor es:

```js
let nombreVariable = valor
```

podemos declarar multiples variables separando por coma:

```js
let variable1 = valor,
        variable2 = valor,
        variable3 = valor
```

La forma de declarar constantes es:

```js
const nombreConstante = valor
```

## Sintaxis

### comentarios:

Existen dos formas de usar comentarios:

```js
//Comentario de una linea

/*Comentario
 * de varias
 * lineas
 */
```

### Punto y Coma

El punto y coma es opcional, se usa para separar expresiones pero los saltos de linea cumplen la misma funcion.

### Case Sensitive

JavaScript es case sensitive, esto significa que diferencia entre mayusculas y minusculas.

La forma estandar en JavaScript es usar camel case:

Ejemplos:

```js
userAge, galleryImageuserAge, galleryImage
```

Tambien es importante que nuestros nombres de variables sean descriptivos.

### Tipos de Datos

JavaScript es un lenguaje dinamicamente tipado, no podemos decirle al interprete que tipo de datos es cada uno el interprete deduce que es cada variable.

- Primitivos:
    - number.
    - string: hay tres formas de declarar textos: con "", con '' y con `` esta ultima es la recomendada.
    - boolean.
    - undefined: este es un valor especial que existe cuando no definimos el valor de una variable.
    - null.
    - symbol(): permite crear referencias unicas.

- Compuestos:
  - Arrays.
  - Objetos.

### El operador typeof

Este operador nos retorna un string en el que nos dice cual es el tipo de dato de una variable

```js
console.log(typeof nombreVariable)
```

