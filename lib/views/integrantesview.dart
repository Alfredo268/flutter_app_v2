import 'dart:ui';
import 'package:flutter/material.dart';

class Fotos{
  String title;
  String nombre;
  Color color;
  String image;

  Fotos(this.title,this.nombre,this.image,this.color);

  static List<Fotos> fotos() {
    return [Fotos("Daniel Hernandez", "Estudiante ing. Civil en Computación UTEM", "img/toki.jpg", Colors.pink),
      Fotos("Francisco Pinochet", "Estudiante ing. Civil en Computación UTEM", "img/pinokio.jpg",
          Colors.lightBlueAccent),
      Fotos("Alfredo Garces", "Estudiante ing. Civil en Computación UTEM", "img/alfred.jpg", Colors.black)];
  }
}