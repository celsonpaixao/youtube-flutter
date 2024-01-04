import 'package:apartament_app/style/colors.dart';
import 'package:apartament_app/view/components/horizontallist.dart';
import 'package:apartament_app/view/components/verticallist.dart';
import 'package:apartament_app/view/creatapartament.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [blueprimary, blue2],
                ),
                boxShadow: [
                  BoxShadow(
                    color: blueprimary.withOpacity(.6),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  )
                ]),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatApartament(),
                  ),
                );
              },
              child: Text(
                "Adicionar Apartamento",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Raleway",
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
            child: CupertinoSearchTextField(
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
              placeholder: 'Pesquise aqui por um apartamento',
              placeholderStyle:
                  TextStyle(fontFamily: 'Raleway', color: Colors.black26),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Apartamentos próximos de ti',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais..',
                      style: TextStyle(
                          fontFamily: 'Raleway', color: Colors.black38),
                    ))
              ],
            ),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.9,
          //   height: MediaQuery.of(context).size.width * 0.7,
          //   child: Expanded(child: HorizontalList()),
          // ),
          Expanded(child: HorizontalList()),
          Expanded(child: VerticalList()),
        ],
      ),
    );
  }
}
