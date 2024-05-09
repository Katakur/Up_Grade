import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'perfilJugador.dart';
import 'listaJuegos.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    String iconUser = "assets/user.svg";
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 60, 54, 209),
        title: Text("Nombre de usuario"),
      ),

      body: Center(
        child: Card(
          color: Color.fromARGB(255, 242, 240, 215),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            // PERFIL DE USUARIO ///
            const Text(
              'Perfil de usuario: ',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
               MaterialPageRoute(                 
                builder: (context) => const perfilJugador())); //ir a perfil Jugador
            },
            child: const Text("Perfil de jugador")),
          // PERFIL DE USUARIO ///

          // LISTA DE JUEGOS ///
            Text(
              'Lista de Juegos: ',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
               MaterialPageRoute(                 
                builder: (context) => const listaJuegos())); //ir a lista de juegos
            },
            child: const Text("lista Juegos")),
            // LISTA DE JUEGOS ///
          ]
        )        
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