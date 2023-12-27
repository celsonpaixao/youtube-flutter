import 'package:aplicativo_de_manga/controller/mangascontroler.dart';
import 'package:aplicativo_de_manga/styles/colors.dart';
import 'package:aplicativo_de_manga/view/components/popularlist.dart';
import 'package:flutter/cupertino.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var seachcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarygrey,
        title: CupertinoSearchTextField(
          onChanged: FilterManga,
          controller: seachcontroller,
          itemColor: Colors.white70,
          placeholder: 'Procurar por mangá...',
          style: TextStyle(color: Colors.white38),
          placeholderStyle: TextStyle(fontSize: 15, color: Colors.white30),
          padding: EdgeInsets.all(12),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mais populares',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 240,
            child: const Expanded(
              flex: 1,
              child: PopularList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mangas',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                  style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.white10)),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        'Ver mais',
                        style: TextStyle(color: Colors.white38),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.white38,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Expanded(child: MangaGrid())
        ],
      ),
      backgroundColor: primarygrey,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primarygrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: 'Lista'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Favoritos')
        ],
      ),
    );
  }

  void FilterManga(String value) {
   
  }
}

