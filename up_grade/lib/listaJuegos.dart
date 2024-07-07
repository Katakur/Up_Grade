import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'juego.dart'; // Importa la clase Juego
import 'dart:convert' as convert;
import 'detallesRutina.dart';

Future<List<Juego>> loadGames() async {
  String jsonString = await rootBundle.loadString('assets/json/glist.json');
  List<dynamic> jsonData = convert.jsonDecode(jsonString);

  List<Juego> juegos = jsonData.map((json) => Juego.fromJson(json)).toList();
  return juegos;
}

class listaJuegos extends StatelessWidget {
  const listaJuegos({super.key});

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
                Juego juego = juegos[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallesRutina(juego: juego),
                        ),
                      );
                    },
                    child: Container(
                      height: 125,
                      color: Color.fromRGBO(235, 235, 211, 1),
                     child: Center(
                      //SvgPicture.asset(iconController, width: 45, height: 45)
                        child: SvgPicture.asset(
                          juego.icon,
                          width: 175,
                          //width: 75,
                          //height: 75,
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

class DetallesRutina extends StatelessWidget {
  final Juego juego;

  const DetallesRutina({Key? key, required this.juego}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(juego.nombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name: ${juego.nombre}'),
            Text('Genre: ${juego.genero}'),
            Text('Platforms: ${juego.plataformas.join(", ")}'),
            Text('Description: ${juego.descripcion}'),
            Text('Webpage: ${juego.webpage}'),
            Text('Popularity: ${juego.popularidad}'),
            // You can add more details as needed
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: listaJuegos(),
  ));
}
