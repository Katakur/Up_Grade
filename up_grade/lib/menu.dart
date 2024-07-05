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
        title: Text("Nacho"),
      ),

      drawer: Drawer( //Menu desplegable
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //SvgPicture.asset(icon1),
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              //leading: SvgPicture.asset( ),
              //leading: Icon(Icons.iconController)
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconUser, width: 45, height: 45),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const perfilJugador()),
                );
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconController, width: 45, height: 45),
              title: const Text('Lista de juegos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const listaJuegos()),
                );
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconDetails, width: 45, height: 45),
              title: const Text('Detalles de la app'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetallesApp()),
                );
              },
            ),           
          ],
        ),
      ),

       body: Center(
        // Detalles de la aplicación
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(' \n \n \n \n'),// Salto de espacio
            
            Text(' Bienvenido a la App ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),

            Text(' \n \n \n \n'),// Salto de espacio

            Text(' Rutina actual ',  style: TextStyle(fontFamily: 'Mario', fontSize: 20)),
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