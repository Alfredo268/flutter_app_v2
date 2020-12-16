import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_v2/views/CardFotos.dart';
import 'package:flutter_app_v2/views/integrantesview.dart';

class ListFotos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListFotosState();
  }
}

class ListFotosState extends State<ListFotos>{
  List<Fotos>fotos=Fotos.fotos();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
        itemCount: fotos.length,
        itemBuilder: (BuildContext context,int index) {
          return Dismissible(
            key: ObjectKey(fotos[index]),
            child: CardFotos(fotos[index]),
            onDismissed: (direction) {
              setState(() {
                fotos.single;
              });
            },
          );
        });
    }

}