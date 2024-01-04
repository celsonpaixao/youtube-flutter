import 'package:apartament_app/controllers/apartamentscontroller.dart';
import 'package:apartament_app/style/colors.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatefulWidget {
  const VerticalList({super.key});

  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  var apartaments = ApartamentsController.showApartaments();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: apartaments.length,
      itemBuilder: (context, index) {
        var item = apartaments[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(item.imagem),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 180,
                        child: Text(
                          item.titlo,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        '${item.preco} / Ano',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: blueprimary,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Editar',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.black26
                                ),
                              )),
                              TextButton(
                              onPressed: () {},
                              child: Text(
                                'Eliminar',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.red
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
