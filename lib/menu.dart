import 'package:flutter_app_v2/menu.dart';
import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter_app_v2/views/ListFotos.dart';
import 'package:flutter_app_v2/views/listviecountry.dart';
import 'package:flutter_app_v2/views/integrantesview.dart';
import 'package:flutter_app_v2/views/formulario.dart';
class menu extends StatefulWidget{
  MenuState createState()=>MenuState();
  }

class MenuState extends State<menu>{
  int _selectDrawerItem=0;
  _getDraweItemWidget(int pos){
    switch(pos){
      case 0: return  FormPage();
      case 1: return  ListFotos();


    }
  }
  _onSelectItem(int pos){
    setState(() {
      _selectDrawerItem=pos;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Team Golf'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.green,
                  child:Text('TG',
                    style:TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text('Integrantes'),
                leading: Icon(Icons.android_rounded),
                onTap: (){
                  _onSelectItem(1);

                },
              ),
              ListTile(
                title:  Text('Indicadores'),
                leading: Icon(Icons.assessment),

                onTap: (){
                  _onSelectItem(0);

                },
              )
            ],
          ),
        ),
        body: _getDraweItemWidget(_selectDrawerItem),
    );
  }
}