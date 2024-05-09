import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'menu.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 60, 54, 209)),
        useMaterial3: true,
      ),
      home: const 
      MyHomePage(title: 'UpGrade'),
    );
  }
}
