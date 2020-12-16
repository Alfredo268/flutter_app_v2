import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListCountries extends StatefulWidget {
  @override
  _ListCountriesState createState() => _ListCountriesState();
}

class _ListCountriesState extends State<ListCountries> {
  List data;

  Future<List> getData() async{
    final response = await http.get("http://10.0.2.2:8080/api/countries/all");
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Countries'),
        actions: [],
      ),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ItemList(
            list: snapshot.data,
          )
              : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;

  const ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i){
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 60.3,
                    child: Card(
                      color: Colors.blueAccent,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              list[i][('name')].toString(),
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
