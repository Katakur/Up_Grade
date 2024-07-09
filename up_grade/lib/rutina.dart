import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class Tarea {
  String nombre;
  String tarea;
  bool status;

  Tarea(this.nombre, this.tarea, this.status);

  factory Tarea.fromJson(Map<String, dynamic> json) {
    return Tarea(
      json['nombre'],
      json['tarea'],
      json['status'],
    );
  }

  void toggleStatus() {
    status = !status; // Cambia el estado de la tarea
  }
}

class Rutina {
  int id;
  String nombreJuego;
  String nombreRutina;
  String dificultad;
  String descripcion;
  String objetivo;
  List<Tarea> tareas;
  bool completado;

  Rutina(this.id, this.nombreJuego, this.nombreRutina, this.dificultad, this.descripcion, this.objetivo, this.tareas, this.completado);

  factory Rutina.fromJson(Map<String, dynamic> json) {
    var list = json['tareas'] as List;
    List<Tarea> tareaList = list.map((e) => Tarea.fromJson(e)).toList();
    
    bool allCompleted = tareaList.every((tarea) => tarea.status);

    return Rutina(
      json['id'],
      json['nombreJuego'],
      json['nombreRutina'],
      json['dificultad'],
      json['descripcion'],
      json['objetivo'],
      tareaList,
      allCompleted,
    );
  }

  void toggleStatus() {
    completado = !completado; // Cambia el estado de la tarea
  }
}

