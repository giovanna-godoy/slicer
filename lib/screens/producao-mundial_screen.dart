import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class ProducaoMundialScreen extends StatefulWidget{
  @override
  _ProducaoMundialScreenState createState() => _ProducaoMundialScreenState();
}

class _ProducaoMundialScreenState extends State<ProducaoMundialScreen> {

  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  List<CircularStackEntry> data = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(19.5, Color.fromRGBO(55, 100, 128, 1), rankKey: 'EUA'),
        new CircularSegmentEntry(15.7, Color.fromRGBO(115, 211, 42, 1), rankKey: 'Brasil'),
        new CircularSegmentEntry(11.6, Color.fromRGBO(255, 0, 0, 1), rankKey: 'China'),
        new CircularSegmentEntry(6.8, Color.fromRGBO(7, 136, 128, 1), rankKey: 'Índia'),
        new CircularSegmentEntry(4.7, Color.fromRGBO(235, 243, 1, 1), rankKey: 'Argentina'),
        new CircularSegmentEntry(3.7, Color.fromRGBO(102, 98, 77, 1), rankKey: 'Austrália'),
        new CircularSegmentEntry(37.9, Color.fromRGBO(207, 129, 99, 1), rankKey: 'Outros'),
      ],
      rankKey: 'Partes - Países',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('assets/header.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
                  'Participação dos Países na Produção Mundial de Carne Bovina em 2018',
                  style: TextStyle(
                  color: Color.fromRGBO(182, 95, 114, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              textAlign: TextAlign.center,
              ),
            new AnimatedCircularChart(
                key: _chartKey,
                size: const Size(300.0, 300.0),
                initialChartData: data,
                chartType: CircularChartType.Pie,
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.height * 0.7,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/legenda.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}



