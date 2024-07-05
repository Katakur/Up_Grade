import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'detallesRutina.dart';

class juegos {
  int ID;
  bool completo;
  int total;
  String descripcion;
  String image;

  juegos(this.ID, this.completo, this.total, this.descripcion, this.image);

}