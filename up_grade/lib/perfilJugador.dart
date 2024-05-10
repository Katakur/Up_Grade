import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class perfilJugador extends StatelessWidget {
  const perfilJugador({super.key});

  @override
  Widget build(BuildContext context) {

    String iconUser = "assets/user.svg";
    String iconFavorite = "assets/favorite.svg";

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
              Text("  Nombre de usuario", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
              ],
            ),
            Text(' Descripción del usuario ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),

            Text(' \n \n \n \n'),// Salto de espacio

            Text(' Juego favorito ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina())); //ir a lista de juegos
            },
            child: SvgPicture.asset(iconFavorite, height: 35, width: 35,)),

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