import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'perfilJugador.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 71, 66, 221),
        title: Text("Nombre de usuario"),
      ),

      body: Center(
        child: Card(
          color: Color.fromARGB(255, 242, 240, 215),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            const Text(
              'Perfil de usuario: ',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            Text(
              'Lista de Juegos: ',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            Text(
              'detalles de rutina: ',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            ]
          )
          
        // Detalles de la aplicación
        /*child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Menu: ", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
          ],
        )*/
      )
      ),

      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
               MaterialPageRoute(                 
                builder: (context) => const perfilJugador())); //ir a perfil Jugador
            },
            child: const Text("Perfil de jugador")),

      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Regresar")),
      ]
    );
  }
}