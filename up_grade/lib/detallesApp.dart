import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesApp extends StatelessWidget {
  const DetallesApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 38, 63),
        title: Text("Detalles"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Esta aplicación fue realizada como parte de un proyecto universitario. Busca ayudar a los jugadores de videojuegos a mejorar su rendimiento.",
                    style: TextStyle(
                      fontFamily: "Tahoma",
                      fontSize: 15,
                      letterSpacing: 1.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
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
