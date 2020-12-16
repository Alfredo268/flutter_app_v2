import 'dart:ui';
import 'package:flutter/material.dart';

class Fotos{
  String title;
  String nombre;
  Color color;
  String image;

  Fotos(this.title,this.nombre,this.image,this.color);

  static List<Fotos> fotos() {
    return [Fotos("Daniel Hernandez", "Vegano Developer", "img/toki.jpg", Colors.pink),
      Fotos("Francisco Pinochet", "Mordisquito Developer", "img/pinokio.jpg",
          Colors.lightBlueAccent),
      Fotos("Alfredo Garces", "pulento", "img/alfred.jpg", Colors.black)];
  }
}