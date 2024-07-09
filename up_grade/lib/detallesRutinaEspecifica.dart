import 'package:flutter/material.dart';
import 'Rutina.dart'; // Asegúrate de importar la clase Rutina

class DetallesRutinaEspecifica extends StatelessWidget {
  final Rutina rutina;

  DetallesRutinaEspecifica({required this.rutina});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rutina.nombreJuego),
        backgroundColor: Color.fromARGB(255, 207, 38, 63),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                rutina.nombreRutina,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 24),
              Text(
                'Nivel: ${rutina.dificultad}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 24),
              Text(
                'Descripción:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 8),
              Text(
                rutina.descripcion,
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 24),
              Text(
                'Objetivo: ${rutina.objetivo}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 24),
              Text(
                'Tareas:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: rutina.tareas.map((tarea) {
                  return ListTile(
                    title: Text(
                      tarea.nombre,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
                    ),
                    subtitle: Text(
                      tarea.tarea,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(184, 173, 158, 1)),
                    ),
                    trailing: tarea.status
                        ? Icon(Icons.check_circle, color: Colors.green)
                        : Icon(Icons.cancel, color: Colors.red),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
