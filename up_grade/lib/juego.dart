import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class juegos {
  int ID;
  String imagen;
  String nombre;
  int anno;
  String genero;
  String descripcion;
  String link;
  Float puntuacion;
  int dannoTotal;
  int tiempoPartida;

  juegos(this.ID, this.imagen, this.nombre, this.anno, this.genero, this.descripcion, this.link, this.puntuacion, this.dannoTotal, 
  this.tiempoPartida);

}