import 'package:slicer/models/categorias_model.dart';

import 'database.dart';

class CategoriasRepository {

  Future<List<CategoriasModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<CategoriasModel> categorias = new List<CategoriasModel>();

    if (db.created) {
      categorias = new List<CategoriasModel>();
      categorias.add(
        new CategoriasModel(
          id: 1,
          nome: 'Tipos de Cortes',
          imagem: 'boi.jpg',
          rota: "/cortes",
        ),
      );
      categorias.add(
        new CategoriasModel(
          id: 2,
          nome: 'Produção Mundial de Carne',
          imagem: 'vacas-2.jpg',
          rota: "/producao-mundial",
        ),
      );
    }
    return new Future.value(categorias);
  }

}
