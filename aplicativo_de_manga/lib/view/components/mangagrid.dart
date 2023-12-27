import 'package:aplicativo_de_manga/controller/mangascontroler.dart';
import 'package:aplicativo_de_manga/styles/colors.dart';
import 'package:flutter/material.dart';

class MangaGrid extends StatefulWidget {
  const MangaGrid({super.key});

  @override
  State<MangaGrid> createState() => _MangaGridState();
}

class _MangaGridState extends State<MangaGrid> {
  var manga = MangaController.showMangaGrig();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.6
      ),
      itemCount: manga.length,
      itemBuilder: (context, index) {
        var item = manga[index];
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
                  child: Image.network(
                    item.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.titulo,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
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
