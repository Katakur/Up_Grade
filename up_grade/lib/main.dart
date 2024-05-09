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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 78, 73, 226)),
        useMaterial3: true,
      ),
      home: const 
      MyHomePage(title: 'UpGrade'),
    );
  }
}
