import 'dart:convert';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  final String pais;
  final String pais2;
  final String ano;
  final String ano2;
  final String indicadores;
  final Widget child;

//Petición post

  Future<List<Sales>> JsonPost(String countryCode, int endYear,
      String indicatorCode, int startYear) async {
    Map data = {
      'countryCode': '$countryCode',
      'endYear': '$endYear',
      'indicatorCode': '$indicatorCode',
      "startYear": '$startYear',
    };
    final response = await http.post('http://10.0.2.2:8080/api/indicators/info',
        headers: {"Content-Type": "application/json"}, body: json.encode(data));
    List<Sales> data2 = [];

    for (var json in json.decode(response.body)) {
      data2.add(Sales(json["year"], json["value"]));
    }
    return data2;
  }

  HomePage(this.pais, this.pais2, this.ano, this.ano2, this.indicadores,
      {Key key, this.child})
      : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pais;
  TextEditingController pais2;
  TextEditingController indicadores;
  TextEditingController ano;
  TextEditingController ano2;

  List<charts.Series<Sales, int>> _seriesLineData;
  List data;

  _generateData() {
    List<Sales> linesalesdata = [];
    List<Sales> linesalesdata1 = [];
    var x = int.parse(ano.text);
    var y = int.parse(ano2.text);
    int d = y - x;
    print(d);
    int z = 30;
    int k = 25;
    for (var i = 0; i < d; i++) {
      linesalesdata.add(Sales(i, z));

      linesalesdata1.add(Sales(i, k));
      z = z + 30;
      k = k + 34;
    }

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indicadores = TextEditingController(text: widget.indicadores);
    ano = TextEditingController(text: widget.ano);
    ano2 = TextEditingController(text: widget.ano2);
    pais = TextEditingController(text: widget.pais);
    pais2 = TextEditingController(text: widget.pais2);
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976d2),
        //backgroundColor: Color(0xff308e1c),
        title: Text('Grafico de lineas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  indicadores.text,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: charts.LineChart(_seriesLineData,
                      defaultRenderer: new charts.LineRendererConfig(
                          includeArea: true, stacked: true),
                      animate: true,
                      animationDuration: Duration(seconds: 5),
                      behaviors: [
                        new charts.ChartTitle('Año',
                            behaviorPosition: charts.BehaviorPosition.bottom,
                            titleOutsideJustification:
                                charts.OutsideJustification.middleDrawArea),
                        new charts.ChartTitle('Indicador',
                            behaviorPosition: charts.BehaviorPosition.start,
                            titleOutsideJustification:
                                charts.OutsideJustification.middleDrawArea),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}

/*
  @override
  Widget build(BuildContext context) {
    List<Sales> data;
    return FutureBuilder<List<Sales>>(
      future: JsonPost("CL", 2019, "PIB", 2017),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Hubo un error");
        } else if (snapshot.hasData) {
          return Grafico(snapshot.data);
        }
      },
    );
  }
}

class Grafico extends StatelessWidget {
  final List<Sales> data;

  const Grafico(this.data);

  _getSeriesData() {
    List<charts.Series<Sales, int>> series = [
      charts.Series(
          id: "Values",
          data: data,
          domainFn: (Sales series, _) => series.yearval,
          measureFn: (Sales series, _) => series.salesval,
          colorFn: (Sales series, _) =>
          charts.MaterialPalette.blue.shadeDefault
      )
    ];
    return series;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grafico"),
      ),
      body: Container(
          child: new charts.LineChart(_getSeriesData(), animate: true, )
      ),
    );
  }
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}

_generateData() {
    var linesalesdata = JsonPost(pais.text, int.parse(ano2.text), indicadores.text, int.parse(ano.text));
    var linesalesdata1 = JsonPost(pais2.text, int.parse(ano2.text), indicadores.text, int.parse(ano.text));

    _seriesLineData.add(
        charts.Series(
          colorFn: (, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
    id: 'Air Pollution',
    data: linesalesdata,
    domainFn: (Sales sales, _) => sales.yearval,
    measureFn: (Sales sales, _) => sales.salesval,
    ),
    );
    _seriesLineData.add(
    charts.Series(
    colorFn: (, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
    id: 'Air Pollution',
    data: linesalesdata1,
    domainFn: (Sales sales, _) => sales.yearval,
    measureFn: (Sales sales, _) => sales.salesval,
    ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indicadores = TextEditingController(text: widget.indicadores);
    ano = TextEditingController(text: widget.ano);
    ano2 = TextEditingController(text: widget.ano2);
    pais = TextEditingController(text: widget.pais);
    pais2 = TextEditingController(text: widget.pais2);
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976d2),
        //backgroundColor: Color(0xff308e1c),
        title: Text('Grafico de lineas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  indicadores.text,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: charts.LineChart(_seriesLineData,
                      defaultRenderer: new charts.LineRendererConfig(
                          includeArea: true, stacked: true),
                      animate: true,
                      animationDuration: Duration(seconds: 5),
                      behaviors: [
                        new charts.ChartTitle('Año',
                            behaviorPosition: charts.BehaviorPosition.bottom,
                            titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                        new charts.ChartTitle('Indicador',
                            behaviorPosition: charts.BehaviorPosition.start,
                            titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
*/
//INTENT DEL USAR LA INFO DE LA API
