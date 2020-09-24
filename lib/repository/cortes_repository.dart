import 'package:slicer/models/cortes_model.dart';

import 'database.dart';

class CortesRepository {

  Future<List<CortesModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<CortesModel> cortes = new List<CortesModel>();

    if (db.created) {
      cortes = new List<CortesModel>();
      cortes.add(
        new CortesModel(
          id: 1,
          nome: 'Aba do Filé',
          descricao:
          'É um corte extremamente enervado. Ele é consumido como carne moída.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 2,
          nome: 'Acém',
          descricao: 'É um corte mais magro, considerado carne de segunda. Ele é muito utilizado em refogados, assados e cozidos, além de moída ou em bifes.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 3,
          nome: 'Alcatra',
          descricao: 'É um corte constituído de fibras macias e extremamente saboroso. Ele é um dos cortes bovinos mais versáteis e é considerado carne de primeira. A alcatra inteira mede aproximadamente 80 cm e, a partir dela, são retirados outros tipos de cortes, como maminha e picanha. Também é um corte muito utilizado em churrascos.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 4,
          nome: 'Capa de Filé',
          descricao: 'É um corte com uma grande quantidade de nervos. A capa de filé é considerada uma carne de segunda e é muito utilizada em assados, ensopados e refogados.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 5,
          nome: 'Contra Filé',
          descricao: 'É um corte recomendado para assados e bife. Ele é considerado uma carne e contém uma espessa camada de gordura na parte externa.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 6,
          nome: 'Coxão Duro',
          descricao: 'É um corte com longas e rígidas fibras, além de gordura na parte externa. Ele é muito utilizado no preparo de carnes recheadas, cozidos e assados. Seu tempo de cozimento é demorado.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 7,
          nome: 'Coxão Mole',
          descricao: 'É um corte constituído de fibras curtas e macias, com nervos e gordura. Ele é muito utilizado em ensopados, assados, picadinhos e enrolados.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 8,
          nome: 'Cupim',
          descricao: 'É um corte macio e suculento com bastante gordura. Ele é muito usado em churrascos e seu tempo de cozimento é demorado.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 9,
          nome: 'Filé de Costela',
          descricao: 'É um corte muito usado em refogados e cozidos de panela. Ela é considerada uma carne de segunda e seu tempo de cozimento é demorado.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 10,
          nome: 'Filé Mignon',
          descricao: 'É um corte nobre, macio e suculento. É ideal para bifes altos e mal passados.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 11,
          nome: 'Fraldinha',
          descricao: 'É um corte pequeno, suculento e macio, muito utilizado em churrascos. A fraldinha é composta por fibras, nervos e gordura.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 12,
          nome: 'Lagarto',
          descricao: 'É um corte em formato arredondado com fibra longas e magras. Ele é considerado carne primeira.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 13,
          nome: 'Maminha da Alcatra',
          descricao: 'É um corte macio e suculento. Ele é muito consumido com molhos.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 14,
          nome: 'Músculo Dianteiro',
          descricao: 'É um corte com massas musculares sobrepostas. Ele é utilizado em caldos de carne, carne de panela e sopas.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 15,
          nome: 'Músculo Traseiro',
          descricao: 'É um corte considerado carne de segunda.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 16,
          nome: 'Paleta',
          descricao: 'É um corte suculento e macio. Ele é muito utilizado em picadinhos, assados de panela e cozidos.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 17,
          nome: 'Patinho',
          descricao: 'É um corte com fibras macias, muito usado no preparo de bifes, cozidos e picadinhos. É considerado carne de primeira.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 18,
          nome: 'Peito (sem ou com osso)',
          descricao: 'É um corte com uma grande quantidade de fibras e músculos. É considerada uma carne de segunda e tem um tempo de cozimento demorado.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 19,
          nome: 'Pescoço',
          descricao: 'É um corte constituído de fibras musculares, tecido conjuntivo e gordura. A carne de pescoço é considerada de terceira e tem um tempo de cozimento mais demorado.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 20,
          nome: 'Picanha',
          descricao: 'É um corte extremamente macio, saboroso e suculento. Considerada uma das carnes mais famosas nas churrascarias, é servida inteira ou em bifes.',
        ),
      );
      cortes.add(
        new CortesModel(
          id: 21,
          nome: 'Ponta de Agulha',
          descricao: 'É um corte localizado nas últimas costelas do boi. A ponta de agulha pode ser consumida inteira, em pedaços ou moída e tem um tempo de cozimento demorado.',
        ),
      );
    }
    return new Future.value(cortes);
  }

}
