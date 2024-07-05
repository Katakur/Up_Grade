import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class listaJuegos extends StatelessWidget {
  const listaJuegos({super.key});

  @override
  Widget build(BuildContext context) {
    //String iconUser = "assets/user.svg";
    int iD_Juego = 1; // ID del juego seleccionado
    
     return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 134, 130, 255),
        title: Text("Juegos"),
      ),

       body: Center(
        //Lista
        child: Card(
          color: Color.fromARGB(255, 219, 216, 254),
          child: ListView(
            children: <Widget>[
            //Los elementos de la lista se guardan en conteiner
             InkWell(
                onTap: () {
                  // Acción al tocar "Nombre de Juego 1"
                  iD_Juego = 1;
                  Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina()));
                  // Navegar a otra pantalla o mostrar un diálogo
                },
                child: Container(
                  height: 55,
                  color: Color.fromARGB(255, 255, 228, 130),
                  child: Center(
                    child: Text(
                      "super Smash Bros Melee",
                      style: TextStyle(fontFamily: "Mario", fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
                                  
              ),
             InkWell(
                onTap: () {
                  // Acción al tocar "Nombre de Juego 2"
                  iD_Juego = 2;
                  Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina()));
                  // Navegar a otra pantalla o mostrar un diálogo
                },
                child: Container(
                  height: 55,
                  color: Color.fromARGB(255, 255, 228, 130),
                  child: Center(
                    child: Text(
                      "Multiversus",
                      style: TextStyle(fontFamily: "Mario", fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
              ),
             InkWell(
                onTap: () {
                  // Acción al tocar "Nombre de Juego 3"
                  iD_Juego = 3;
                  Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina()));
                  // Navegar a otra pantalla o mostrar un diálogo
                },
                child: Container(
                  height: 55,
                  color: Color.fromARGB(255, 255, 228, 130),
                  child: Center(
                    child: Text(
                      "Rivals of aether",
                      style: TextStyle(fontFamily: "Mario", fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                
              ),
              //////////////////////////////// AGREGAR LINK PARA DETALLES DE RUTINA CON EL TIPO DE JUEGO SELECCIONADO ///////////////////
          ],
        ),
      ),
    ),
      
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Regresar")),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(                 
                builder: (context) => const DetallesRutina())); //ir a lista de juegos
            },
            child: const Text("Juego 1")),
      ]
    );
  }
}