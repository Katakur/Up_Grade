import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'perfilJugador.dart';
import 'listaJuegos.dart';
import 'detallesApp.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  void prueba()
  {

  }

  @override
  Widget build(BuildContext context) {
    String iconUser = "assets/user.svg";
    String iconController = "assets/controller.svg";
    String iconDetails = "assets/details.svg";
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 134, 130, 255),
        title: Text("Nombre de usuario"),
      ),

      body: Center(
        child: Card( 
          color: Color.fromARGB(255, 134, 130, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          // PERFIL DE USUARIO ///
          Text(' Perfil ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const perfilJugador())); //ir a perfil Jugador
            },
          child: SvgPicture.asset(iconUser, height: 50, width: 50,)), 
          // PERFIL DE USUARIO ///
          Text(' \n \n \n \n'),// Salto de espacio
          // LISTA DE JUEGOS ///
          Text(' Lista de Juegos ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const listaJuegos())); //ir a lista de juegos
            },
            child: SvgPicture.asset(iconController, height: 50, width: 50,)),
            // LISTA DE JUEGOS ///
            Text(' \n \n \n \n'),// Salto de espacio
            // DETALLES DE LA APP ///
            Text(' Detalles de la app ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesApp())); //ir a lista de juegos
            },
            child: SvgPicture.asset(iconDetails, height: 50, width: 50,)),
        Row(),
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