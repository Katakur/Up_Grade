import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class listaJuegos extends StatelessWidget {
  const listaJuegos({super.key});

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: 55,
                color: Color.fromARGB(255, 255, 228, 130),
                child: const Center(
                  child: Text("Nombre de Juego 1", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
                  //ElevatedButton(onPressed: () {Navigator.pop(context);},),
              )),
              Container(
                height: 5,
              ),
              Container(
                height: 55,
                color: Color.fromARGB(255, 255, 228, 130),
                child: const Center(
                  child: Text("Nombre de Juego 2",  style: TextStyle(fontFamily: "Mario", fontSize: 20)),
              )),
              Container(
                height: 5,
              ),
             Container(
                height: 55,
                color: Color.fromARGB(255, 255, 228, 130),
                child: const Center(
                  child: Text("Nombre de Juego 3",  style: TextStyle(fontFamily: "Mario", fontSize: 20)),
              )), 
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