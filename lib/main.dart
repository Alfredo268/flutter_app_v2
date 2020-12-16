import 'package:flutter/material.dart';
import 'package:flutter_app_v2/views/ListFotos.dart';
import 'package:flutter_app_v2/views/listviecountry.dart';
import 'package:flutter_app_v2/views/integrantesview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter+Spring Boot API',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListFotos()
    );
  }
}