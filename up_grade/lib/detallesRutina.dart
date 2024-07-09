import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'Juego.dart'; // Importa la clase Juego
import 'Rutina.dart'; // Importa la clase Rutina

class DetallesRutina extends StatefulWidget {
  final Juego juego;

  const DetallesRutina({Key? key, required this.juego}) : super(key: key);

  @override
  _DetallesRutinaState createState() => _DetallesRutinaState();
}

class _DetallesRutinaState extends State<DetallesRutina> {
  late Future<List<Rutina>> futureRutinas;

  @override
  void initState() {
    super.initState();
    futureRutinas = loadRoutines();
  }

  Future<List<Rutina>> loadRoutines() async {
    try {
      final String response = await rootBundle.loadString('assets/json/rlist.json');
      final List<dynamic> data = jsonDecode(response);
      return data.map((json) => Rutina.fromJson(json)).toList();
    } catch (e) {
      print('Error parsing JSON: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.juego.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nombre: ${widget.juego.nombre}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
            Text(
              'Genero: ${widget.juego.genero}',
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
            Text(
              'Plataformas: ${widget.juego.plataformas.join(", ")}',
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
            Text(
              'Descripción: ${widget.juego.descripcion}',
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
            Text(
              'Pagina web: ${widget.juego.webpage}',
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
            Text(
              'Popularidad: ${widget.juego.popularidad}',
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}