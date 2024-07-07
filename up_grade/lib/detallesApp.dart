import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesApp extends StatelessWidget {
  const DetallesApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(235, 235, 211, 1),

        title: Text("Detalles de la app"),
      ),

      body: Center(
        child: Card(
        // Detalles de la aplicación
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Esta aplicación fue realizada cómo parte de un proyecto universitario. Busca ayudar a los jugadores de videojuegos mejorar su rendimiento", 
            style: TextStyle(fontFamily: "Mario", fontSize: 15, letterSpacing: BorderSide.strokeAlignOutside)),
            ],  
          )
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Regresar")),
      ]
    );
  }
}