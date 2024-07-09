import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'Juego.dart'; // Importa la clase Juego
import 'Rutina.dart'; // Importa la clase Rutina
import 'dart:convert' as convert;
import 'detallesRutina.dart';

Future<List<Juego>> loadGames() async {
  String jsonString = await rootBundle.loadString('assets/json/glist.json');
  List<dynamic> jsonData = convert.jsonDecode(jsonString);
  List<dynamic>? _jsonList;

  List<Juego> juegos = jsonData.map((json) => Juego.fromJson(json)).toList();
  return juegos;
}

class ListaJuegos extends StatelessWidget {
  const ListaJuegos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 38, 63),
        title: Text("Juegos"),
      ),
      body: Container(
        color: Color.fromARGB(255, 44, 48, 46), 
        child: FutureBuilder<List<Juego>>(
          future: loadGames(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              List<Juego> juegos = snapshot.data!;
              return ListView.builder(
                itemCount: juegos.length,
                itemBuilder: (context, index) {
                  Juego Juegos = juegos[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetallesRutina(juego: Juegos),
                          ),
                        );
                      },
                      child: Container(
                        height: 125,
                        color: Color.fromRGBO(235, 235, 211, 1),
                        child: Center(
                          child: SvgPicture.asset(
                            Juegos.icon,
                            width: 175,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(child: Text('No data found'));
            }
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
void main() {
  runApp(MaterialApp(
    home: ListaJuegos(),
  ));
}