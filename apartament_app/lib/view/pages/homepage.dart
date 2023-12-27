import 'package:apartament_app/view/components/horizontalist.dart';
import 'package:apartament_app/view/components/verticallist.dart';
import 'package:apartament_app/view/style/colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.grey.shade100)),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'Jakarta',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
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
                  onPressed: () {},
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: CupertinoSearchTextField(
                placeholder: 'Pesquise por um apartamento',
                controller: searchcontroller,
                padding: const EdgeInsets.all(15),
                style: const TextStyle(fontSize: 18, color: Colors.grey),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Apartamentos',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.grey.shade100),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Ver mais',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade700,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: HorizontalList(),
            ),
            const Expanded(
              flex: 3,
              child: VerticalList(),
            ),
          ],
        ),
      ),
    );
  }
}
