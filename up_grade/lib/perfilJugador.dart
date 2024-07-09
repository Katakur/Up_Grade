import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class PerfilJugador extends StatelessWidget {
  const PerfilJugador({Key? key});

  @override
  Widget build(BuildContext context) {
    String iconUser = "assets/icon/user.svg";
    String iconFavorite = "assets/icon/favorite.svg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 38, 63),
        title: Text("Perfil de usuario"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20), // Espacio en blanco arriba

            Row(
              children: [
                SvgPicture.asset(iconUser, height: 75, width: 75),
                SizedBox(width: 10), // Espacio entre el icono y el texto
                Text(
                  "Nacho",
                  style: TextStyle(
                    fontFamily: "Mario",
                    fontSize: 20,
                    color: Color.fromRGBO(235, 235, 211, 1),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20), // Espacio entre la imagen y el texto siguiente

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Soy jugador nuevo y busco mejorar en juegos de pelea tipo smash para salirme de la U',
                style: TextStyle(
                  fontFamily: 'Mario',
                  fontSize: 20,
                  color: Color.fromRGBO(235, 235, 211, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 40), // Espacio adicional al final del texto

          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Regresar"),
        ),
      ],
    );
  }
}
