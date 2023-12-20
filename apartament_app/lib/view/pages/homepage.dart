import 'package:apartament_app/view/style/colores.dart';
import 'package:flutter/material.dart';

class ApartamentsModel {
  final String descricao;
  final String categoria;
  final String provincial;
  final String preco;
  final String endereco;
  final String imagem;

  ApartamentsModel(
      {required this.descricao,
      required this.categoria,
      required this.provincial,
      required this.preco,
      required this.endereco,
      required this.imagem});
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ApartamentsModel> Apartamento = [
  ApartamentsModel(
    descricao:
        'Apartamentos de alto padrão: vantagens de morar em um - Estilo Fontana',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '1.000.000',
    endereco: 'Talatona',
    imagem:
        'https://www.estilofontana.com.br/blog/wp-content/uploads/2021/12/Sacada-gourmet-do-Villa-Celimontana-Residencial-Fontana-Construtora-1170x780.jpg',
  ),
  ApartamentsModel(
    descricao: 'Apartamento Duplex: Conheça esse modelo de Apartamento',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '1.500.000',
    endereco: 'Talatona',
    imagem:
        'https://incorposul.b-cdn.net/wp-content/uploads/2022/07/apartamento-duplex.jpg',
  ),
  ApartamentsModel(
    descricao:
        'Apartamentos personalizados: exclusividade na compra de imóveis de alto padrão | R.Yazbek',
    categoria: '5 estrelas',
    provincial: 'Luanda',
    preco: '2.070.000',
    endereco: 'Patriota',
    imagem:
        'https://www.ryazbek.com.br/wp-content/uploads/2019/11/original-ccba23ab2eb493b23837674485286bcf.jpg',
  ),
];

  var apartamento = [];

  Future<void> showapart() async {
    apartamento = Apartamento;
  }

  @override
  void initState() {
    showapart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Jakarta',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_rounded))
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade100,
                      blueprimary,
                    ],
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    print(apartamento.length.toString());
                  },
                  child: const Text(
                    'Adicionar Apartamento',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: apartamento.length,
                itemBuilder: (context, index) {
                  var item = apartamento[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 100, 20, 100),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage(item.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
