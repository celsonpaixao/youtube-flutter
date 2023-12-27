import 'package:apartament_app/models/apartaments_model.dart';
import 'package:apartament_app/view/style/colores.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatefulWidget {
  const VerticalList({super.key});

  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  List<ApartamentsModel> apartamento = Apartamento;

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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: apartamento.length,
      itemBuilder: (context, index) {
        var item = apartamento[index];
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(item.imagem), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          item.titlo,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text(
                          item.preco + ' kz',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: blueprimary,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Editar',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Eliminar',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ));
      },
    );
  }
}
