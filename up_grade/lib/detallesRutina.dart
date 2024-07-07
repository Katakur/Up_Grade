

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesRutina extends StatelessWidget {
  const DetallesRutina({super.key});

  @override
  Widget build(BuildContext context) {
    int iD_Juego_Seleccionado = 1;
    String iconFavorite = "assets/icon/favorite.svg";

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(235, 235, 211, 1),

        title: Text("Nombre del juego"),
      ),

      body: Center(
        // Detalles de la aplicación
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
            children:[ Text("   Detalles del juego   ", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
            ElevatedButton(
            onPressed: () {
              iD_Juego_Seleccionado = 0; //ir a lista de juegos
              Color.fromARGB(1, 1, 1, 1);
            },
            child: SvgPicture.asset(iconFavorite, height: 25, width: 25,)),
            ]),
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