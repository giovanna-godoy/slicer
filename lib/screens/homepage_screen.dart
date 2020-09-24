import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicer/models/categorias_model.dart';
import 'package:slicer/repository/categorias_repository.dart';

class HomePageScreen extends StatefulWidget{
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
      body: FutureBuilder<List<CategoriasModel>>(
        future: CategoriasRepository().findAllAsync(),
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

  ListView buildListView(List<CategoriasModel> categorias) {
    return ListView.builder(
      itemCount: categorias == null ? 0 : categorias.length,
      itemBuilder: (BuildContext ctx, int index) {
        return listTileCategorias(categorias[index]);
      },
    );
  }

  Card listTileCategorias(CategoriasModel categorias) {
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
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(categorias.imagem),
            fit: BoxFit.cover,
          ),
        ),
      child: Center(
        child: ListTile(
          title: Text(
            categorias.nome,
            style: TextStyle(
              color: Color.fromRGBO(182, 95, 114, 1),
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
            textAlign: TextAlign.center,
          ),
            onTap: () {
              Navigator.pushNamed(
                context,
                categorias.rota,
                arguments: categorias,
              );
            },
          ),
        ),
      ),
    );
  }
}


