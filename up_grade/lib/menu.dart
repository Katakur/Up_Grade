import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:up_grade/detallesRutinaEspecifica.dart';
import 'dart:convert' as convert;
import 'Rutina.dart'; // Importa la clase Rutina
import 'perfilJugador.dart';
import 'listaJuegos.dart';
import 'detallesApp.dart';

Future<List<Rutina>> loadRoutines() async {
  String jsonString = await rootBundle.loadString('assets/json/rlist.json');
  List<dynamic> jsonData = convert.jsonDecode(jsonString);

  List<Rutina> rutinas = [];
  for (var data in jsonData) {
    String nombreJuego = data['nombreJuego'];
    List<dynamic> rutinasData = data['rutinas'];
    for (var rutinaData in rutinasData) {
      rutinas.add(Rutina.fromJson({
        'nombreJuego': nombreJuego,
        ...rutinaData,
      }));
    }
  }

  return rutinas;
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Rutina> rutinas = []; // Lista para almacenar las rutinas

  @override
  void initState() {
    super.initState();
    // Cargar las rutinas al inicio
    loadRoutines().then((loadedRutinas) {
      setState(() {
        rutinas = loadedRutinas;
      });
    });
  }

  void updateRutinaCompletionStatus(bool allCompleted) {
    setState(() {
      // Actualizar el estado de completado de la rutina en Menu
      for (var rutina in rutinas) {
        if (rutina.tareas.every((tarea) => tarea.status)) {
          rutina.completado = true;
        } else {
          rutina.completado = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String iconUser = "assets/icon/user.svg";
    String iconController = "assets/icon/controller.svg";
    String iconDetails = "assets/icon/details.svg";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 38, 63),
        title: Text("Nacho"),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 211, 94),
              ),
              child: Text('Menu'),
            ),
            ListTile(
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
                  MaterialPageRoute(builder: (context) => const ListaJuegos()),
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

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: rutinas.length,
          itemBuilder: (context, index) {
            Rutina rutina = rutinas[index];
            return Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(rutina.nombreRutina),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Juego: ${rutina.nombreJuego}"),
                    SizedBox(height: 4), // Espacio entre líneas
                    Text("Dificultad: ${rutina.dificultad}"),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetallesRutinaEspecifica(rutina: rutina, callback: updateRutinaCompletionStatus),
                    ),
                  );
                },
                trailing: rutina.completado
                    ? Icon(Icons.check_circle, color: Colors.green)
                    : Icon(Icons.cancel, color: Colors.red),
              ),
            );
          },
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
