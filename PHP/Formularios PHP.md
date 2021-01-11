# Formularios PHP

El siguiente código muestra un action form sencillo:

```html
<html>
<body>

<form action="welcome.php" method="post">
Name: <input type="text" name="name"><br>
E-mail: <input type="text" name="email"><br>
<input type="submit">
</form>

</body>
</html>
```

Cuando el usuario completa el formulario anterior y hace clic en el botón enviar, los datos del formulario se envían para su procesamiento a un archivo PHP llamado "welcome.php". Los datos del formulario se envían con el método HTTP POST. Para mostrar los datos enviados, simplemente puede repetir todas las variables. El "welcome.php" se ve así:

```php+HTML
<html>
<body>
Welcome <?php echo $_POST["name"]; ?><br>
Your email address is: <?php echo $_POST["email"]; ?>
</body>
</html>
```

## GET vs POST

Tanto GET como POST crean una matriz.

(por ejemplo, matriz (clave1 => valor1, clave2 => valor2, clave3 => valor3, ...)). Esta matriz contiene pares clave / valor, donde las claves son los nombres de los controles de formulario y los valores son los datos de entrada del usuario.

Tanto GET como POST se tratan como $ _GET y $ _POST. Estos son superglobales, lo que significa que siempre están accesibles, independientemente del alcance, y puede acceder a ellos desde cualquier función, clase o archivo sin tener que hacer nada especial.

$ _GET es una matriz de variables que se pasan al script actual a través de los parámetros de URL.

$ _POST es una matriz de variables que se pasan al script actual a través del método HTTP POST.

### ¿Cuando usar GET?

La información enviada desde un formulario con el método GET es visible para todos (todos los nombres y valores de las variables se muestran en la URL). GET también tiene límites en la cantidad de información para enviar. La limitación es de unos 2000 caracteres. Sin embargo, debido a que las variables se muestran en la URL, es posible marcar la página. Esto puede resultar útil en algunos casos.

> Nota: Nunca se debe utilizar GET para enviar contraseñas u otra información confidencial.

### ¿Cuando usar POST?

La información enviada desde un formulario con el método POST es invisible para los demás (todos los nombres / valores están incrustados en el cuerpo de la solicitud HTTP) y no tiene límites en la cantidad de información a enviar.

Además, POST admite funciones avanzadas como la compatibilidad con entradas binarias de varias partes mientras se cargan archivos al servidor. Sin embargo, debido a que las variables no se muestran en la URL, no es posible marcar la página.

> Nota: Los desarrolladores prefieren POST para enviar datos de formularios.