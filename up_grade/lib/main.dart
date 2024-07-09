import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pantallaInicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UpGrade',
      theme: ThemeData(
        fontFamily: 'Mario',
        scaffoldBackgroundColor: Color.fromARGB(255, 44, 48, 46), 
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 244, 211, 94)),
         textTheme: const TextTheme(
          ///////////// CAMBIAR COLOR FUENTE DE LETRA DESPUÉS //////////////////////
    bodyText1: TextStyle(color: Colors.white), // Usar bodyText en lugar de bodyText2
    headline1: TextStyle(color: Colors.blue), // Ejemplo de color azul para headline1
    // Añade más estilos de texto según sea necesario
  ),
        useMaterial3: true,
      ),
      home: const 
      MyHomePage(title: 'UpGrade'),
      
    );
  }
}
