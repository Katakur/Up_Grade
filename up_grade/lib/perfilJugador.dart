import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class perfilJugador extends StatelessWidget {
  const perfilJugador({super.key});

  @override
  Widget build(BuildContext context) {

    String iconUser = "assets/icon/user.svg";
    String iconFavorite = "assets/icon/favorite.svg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 134, 130, 255),
        title: Text("Perfil"),
      ),
      
      body: Center(
        // Detalles de la aplicación
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
              SvgPicture.asset(iconUser, height: 75, width: 75,),
              Text("  Nacho", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
              ],
            ),
            Text(' Soy jugador nuevo y busco mejorar en juegos de pelea tipo smash para salirme de la U ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),

            Text(' \n \n \n \n'),// Salto de espacio
          ]
        )
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