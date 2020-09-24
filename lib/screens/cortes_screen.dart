import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicer/models/cortes_model.dart';
import 'package:slicer/repository/cortes_repository.dart';

class CortesScreen extends StatefulWidget{
  @override
  _CortesScreenState createState() => _CortesScreenState();
}

class _CortesScreenState extends State<CortesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 228, 228, 2),
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('assets/header.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder<List<CortesModel>>(
        future: CortesRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<CortesModel> cortes) {
    return ListView.builder(
      itemCount: cortes == null ? 0 : cortes.length,
      itemBuilder: (BuildContext ctx, int index) {
        return listTileCortes(cortes[index]);
      },
    );
  }

  Card listTileCortes(CortesModel cortes) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 10.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(191, 185, 179, 10),
        ),
        child: ListTile(
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          title: Text(
            cortes.nome,
            style: TextStyle(
              color: Color.fromRGBO(182, 95, 114, 1),
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Color.fromRGBO(182, 95, 114, 1),
            size: 40.0,
          ),
          onTap: () {
            Navigator.pushNamed(
                context,
                "/cortes_detalhes",
                arguments: cortes,
            );
          },
        ),
      ),
    );
  }
}