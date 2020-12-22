import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_v2/views/integrantesview.dart';


class CardFotos extends StatelessWidget {
  Fotos fotos;

  CardFotos(this.fotos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
      child: Column(
        children: <Widget>[
          Container(
            height: 144.0,
            width: 500.0,
            color: fotos.color,
            child: Image.asset(fotos.image, height: 144.0, width: 160.0),
          ),
          padding(Text(fotos.title,style: TextStyle(fontSize: 18.0))),
          Row(children: <Widget>[
            padding(Icon(Icons.android_rounded)),
            padding(Text(fotos.nombre,style: TextStyle(fontSize: 14.0)))
          ],)
        ],
      ),
    );
  }

  Widget padding(Widget widget){
    return Padding(padding: EdgeInsets.all(7.0),child: widget);
  }




}