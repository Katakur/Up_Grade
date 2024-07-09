import 'package:flutter/material.dart';
import 'Rutina.dart'; // Asegúrate de importar la clase Rutina

class DetallesRutinaEspecifica extends StatefulWidget {
  final Rutina rutina;

  DetallesRutinaEspecifica({required this.rutina});

  @override
  _DetallesRutinaEspecificaState createState() => _DetallesRutinaEspecificaState();
}

class _DetallesRutinaEspecificaState extends State<DetallesRutinaEspecifica> {
  
  void _toggleTareaStatus(int index) {
    setState(() {
      widget.rutina.tareas[index].toggleStatus(); // Método para cambiar el estado de la tarea
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la Rutina'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.rutina.nombreRutina,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              SizedBox(height: 12),
              Text('Dificultad: ${widget.rutina.dificultad}', style: TextStyle(color: Colors.white)), 
              SizedBox(height: 12),
              Text('Descripcion: ${widget.rutina.descripcion}', style: TextStyle(color: Colors.white)), 
              SizedBox(height: 12),
              Text('Objetivo: ${widget.rutina.objetivo}', style: TextStyle(color: Colors.white)), 
              SizedBox(height: 12),
              Text(
                'Tareas:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(235, 235, 211, 1)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(widget.rutina.tareas.length, (index) {
                  var tarea = widget.rutina.tareas[index];
                  return ListTile(
                    title: Text(tarea.nombre, style: TextStyle(color: Colors.white)), // Ejemplo de cambio de color
                    subtitle: Text(tarea.tarea, style: TextStyle(color: Colors.white)), // Ejemplo de cambio de color
                    trailing: InkWell(
                      onTap: () => _toggleTareaStatus(index),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: tarea.status ? Colors.green : Colors.red,
                        ),
                        child: Icon(
                          tarea.status ? Icons.check : Icons.cancel,
                          //color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
