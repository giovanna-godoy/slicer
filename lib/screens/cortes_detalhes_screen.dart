import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicer/models/cortes_model.dart';

class CortesDetalhesScreen extends StatelessWidget {
  CortesModel cortesModel;

  @override
  Widget build(BuildContext context) {
    cortesModel = ModalRoute.of(context).settings.arguments;

    final headerBox = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("cortes.jpg"),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(228, 228, 228, 40)),
          child: Center(
            child: Text(
              cortesModel.nome,
              style: TextStyle(
                color:  Color.fromRGBO(182, 95, 114, 1),
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          left: 10.0,
          top: 40.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(182, 95, 114, 1),
              size: 40.0,
            ),
          ),
        )
      ],
    );

    final footerBoxText = Text(
      cortesModel.descricao,
      style: TextStyle(fontSize: 25.0),
      textAlign: TextAlign.justify,
    );

    final footerBox = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: <Widget>[
            footerBoxText,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          headerBox,
          footerBox,
        ],
      ),
    );
  }
}
