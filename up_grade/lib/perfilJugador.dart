import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class perfilJugador extends StatelessWidget {
  const perfilJugador({super.key});

  @override
  Widget build(BuildContext context) {

    String iconUser = "assets/user.svg";

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