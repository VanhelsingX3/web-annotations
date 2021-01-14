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

## Validación de Formularios

### Elemento form

El elemento form de manera básica se ve de la siguiente manera:

```html
<form action=""></form>
```

En "action" nosotros debemos referenciar hacia donde serán redirigidos y procesados los datos que ingresamos en el formulario, por ejemplo supongamos que tenemos un archivo llamado "datos.php" nuestro código se vería así:

```html
<form action="datos.php"></form>
```

Podemos ejecutarlos en la misma pagina donde nos encontramos si hacemos uso de la variable superglobal $_SERVER["PHP_SELF"] que retorna el nombre del archivo en que nos encontramos, en ese caso nuestro código se vería de la siguiente manera:

```php+HTML
<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>"></form>
```

Ahora bien también podríamos simplemente colocar el nombre del archivo que nos encontramos dentro del "action" pero hay un pequeño detalle, de ambas formas nuestro formulario es inseguro y puede ser facilmente explotado, ¿Como lo arreglamos? con "htmlspecialchars", ahora nuestro código debería verse así:

```php+HTML
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post"></form>
```

La función htmlspecialchars () convierte caracteres especiales en entidades HTML. Esto significa que reemplazará los caracteres HTML como < y > por & lt; y & gt ;. Esto evita que los atacantes exploten el código inyectando código HTML o Javascript (ataques de secuencias de comandos entre sitios) en formularios.

### Campos Requeridos

Desde el HTML es posible colocar una advertencia de que los campos sean requeridos, pero esa validación es muy fácil de saltar, por lo cual es necesario hacer validaciones en el Backend para aumentar la seguridad (Recomiendo copiar y ejecutar este código), en este ejemplo vemos como validar que no hayan campos vacíos:

```php+HTML
<!DOCTYPE HTML>  
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body>  

<?php
// define variables and set to empty values
$nameErr = $emailErr = $genderErr = $websiteErr = "";
$name = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
  }
    
  if (empty($_POST["website"])) {
    $website = "";
  } else {
    $website = test_input($_POST["website"]);
  }

  if (empty($_POST["comment"])) {
    $comment = "";
  } else {
    $comment = test_input($_POST["comment"]);
  }

  if (empty($_POST["gender"])) {
    $genderErr = "Gender is required";
  } else {
    $gender = test_input($_POST["gender"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2>PHP Form Validation Example</h2>
<p><span class="error">* required field</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name">
  <span class="error">* <?php echo $nameErr;?></span>
  <br><br>
  E-mail: <input type="text" name="email">
  <span class="error">* <?php echo $emailErr;?></span>
  <br><br>
  Website: <input type="text" name="website">
  <span class="error"><?php echo $websiteErr;?></span>
  <br><br>
  Comment: <textarea name="comment" rows="5" cols="40"></textarea>
  <br><br>
  Gender:
  <input type="radio" name="gender" value="female">Female
  <input type="radio" name="gender" value="male">Male
  <input type="radio" name="gender" value="other">Other
  <span class="error">* <?php echo $genderErr;?></span>
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>

<?php
echo "<h2>Your Input:</h2>";
echo $name;
echo "<br>";
echo $email;
echo "<br>";
echo $website;
echo "<br>";
echo $comment;
echo "<br>";
echo $gender;
?>

</body>
</html>
```

### Validar Nombre, Email y y URL

```php+HTML
<?php
// define variables and set to empty values
$nameErr = $emailErr = $genderErr = $websiteErr = "";
$name = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }

  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  }

  if (empty($_POST["website"])) {
    $website = "";
  } else {
    $website = test_input($_POST["website"]);
    // check if URL address syntax is valid (this regular expression also allows dashes in the URL)
    if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$website)) {
      $websiteErr = "Invalid URL";
    }
  }

  if (empty($_POST["comment"])) {
    $comment = "";
  } else {
    $comment = test_input($_POST["comment"]);
  }

  if (empty($_POST["gender"])) {
    $genderErr = "Gender is required";
  } else {
    $gender = test_input($_POST["gender"]);
  }
}
?>
```

