import 'package:aplicativo_de_manga/controller/popularescontroller.dart';
import 'package:aplicativo_de_manga/styles/colors.dart';
import 'package:flutter/material.dart';

class PopularList extends StatefulWidget {
  const PopularList({super.key});

  @override
  State<PopularList> createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  var mangas = PopularController.showPopularList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mangas.length,
      itemBuilder: (context, index) {
        var item = mangas[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 120,
            height: 181,
            color: red1,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.network(item.imagem, fit: BoxFit.cover,),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    item.titulo,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
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
