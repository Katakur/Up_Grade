import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class Juego {
  int ID;
  String nombre;
  String genero;
  List<String> plataformas;
  String descripcion;
  String webpage;
  double popularidad;
  String icon;

  Juego(this.ID, this.nombre, this.genero, this.plataformas, this.descripcion, this.webpage, this.popularidad, this.icon);

   factory Juego.fromJson(Map<String, dynamic> json) {
    return Juego(
      json['id'],
      json['nombre'],
      json['genero'],
      List<String>.from(json['plataformas']),
      json['descripcion'],
      json['webpage'],
      double.parse(json['popularidad'].toString()),
      json['icon'],
    );
  }

}