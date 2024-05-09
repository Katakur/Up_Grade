import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class perfilJugador extends StatelessWidget {
  const perfilJugador({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 71, 66, 221),
        title: Text("Nombre de usuario"),
      ),

      body: Center(
        // Detalles de la aplicación
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("perfil de jugador", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
          ],
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