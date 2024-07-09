import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Detalles de la aplicación
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //SvgPicture.asset('assets/icon/details', width: 45, height: 45),
            Text("Bienvenido", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
          ],  
        )
      ),
      
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Menu())); //ir a Menu
            },
            child: const Text("Menu")),
      ]
    );
  }
}
