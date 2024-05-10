

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesRutina extends StatelessWidget {
  const DetallesRutina({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 234, 31, 89),

        title: Text("Nombre del juego"),
      ),

      body: Center(
        // Detalles de la aplicación
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Detalles del juego", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
            Text("Recomendaciones", style: TextStyle(fontFamily: "Mario", fontSize: 15)),
            Text("Cantidad de combos", style: TextStyle(fontFamily: "Mario", fontSize: 15)),
            Text("Vida total finalizada", style: TextStyle(fontFamily: "Mario", fontSize: 15)),
          ],  
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