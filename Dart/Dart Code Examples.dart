/* Hola Mundo */

void main(){
  print("Hello World");
}

/* Variables */

// podemos usar var

void main(){
  var edad = 32;
  print(edad);
}

void main(){
  var nombre = "Juan";
  print(nombre);
}

//Tambien contamos con String e int para especificar el tipo de dato

void main(){
  String nombre = "Juan";
  int edad= 25;
  print(nombre);
  print(edad);
}

// final nos permite tener los valores constantes

void main(){
  final double pi=3.14;
  print(pi);
}


/* que tipos de datos podemos usar en Dart */

numbers: int, double...
String
Boolean
List(Array)
Maps(Dictionary)

/*---------------Trabajando con FLutter-----------------------*/
// Hola Mundo Basico usando Flutter (en el main.dart)
import 'package:flutter/material.dart';

void main(){
  runApp(
    new Center(
    child: new Directionality(textDirection: TextDirection.ltr, child: new Text("Hello World"))
  ));
}

//Hola Mundo utilizando widgets
import 'package:flutter/material.dart';

void main(){
  runApp(
   new MaterialApp(
       title: "Hola Mundo",
       home: new Scaffold(
       appBar: new AppBar(
         title: new Text("Titulo de la barra superior"),
       ),
         body: new Container(
           child: new Center(
             child: new Text("Hola Mundo"),
           ),
         ),
   )
   )
  );
}

/*Stateless Widget
 * Un stateless widget es un widget inmutable
 * */

import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){ //este metodo escribe todos los widgets que estemos creando
    return new Scaffold( //Scaffold nos da un esquema basico en una aplicacion
       appBar: new AppBar(
         title: new Text("Stateless Widget"),
       ),
      body: new Container(
        child: Center(
        child: new Column( //Esta propiedad child permite ir anidando widgets al widget principal
          children: <Widget>[
            new MyCard(title: new Text("I Love Flutter", style: new TextStyle(fontSize:30, color: Colors.grey ),), icon: new Icon(Icons.favorite, size: 35,color: Colors.red,),),
            new MyCard(title: new Text("I Like Dart" , style: new TextStyle(fontSize:30, color: Colors.grey),),icon: new Icon(Icons.thumb_up, size: 35,color: Colors.blue,),)
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
        )
      ),
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon}); //constructor

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
child: new Card(
  child: new Container(
    padding: const EdgeInsets.all(20.0),
  child: Column(
    children: <Widget>[this.title, this.icon],
  ),
),
)
    );
  }
}
