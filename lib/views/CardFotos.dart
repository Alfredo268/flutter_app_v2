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

      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(fotos.image, height: 110.0, width: 110.0,filterQuality: FilterQuality.high,fit: BoxFit.fill),


          ),
          Column(children: <Widget>[
            padding(Text(fotos.title,style: TextStyle(fontSize: 18.0))),
            padding(Text(fotos.nombre,style: TextStyle(fontSize: 12.0))),
          ],)
        ],



      ),
    );
  }

  Widget padding(Widget widget){
    return Padding(padding: EdgeInsets.all(7.0),child: widget);
  }




}