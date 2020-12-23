import 'package:flutter_app_v2/menu.dart';
import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter_app_v2/views/ListFotos.dart';
import 'package:flutter_app_v2/views/listviecountry.dart';
import 'package:flutter_app_v2/views/integrantesview.dart';
import 'package:flutter_app_v2/views/grafico.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  dynamic wea;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter+Spring Boot API',
      home: menu(),
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

