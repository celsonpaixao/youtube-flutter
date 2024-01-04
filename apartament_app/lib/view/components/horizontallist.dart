import 'package:apartament_app/controllers/apartamentscontroller.dart';
import 'package:apartament_app/style/colors.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  var apartaments = ApartamentsController.showApartaments();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: apartaments.length,
      itemBuilder: (context, index) {
        var item = apartaments[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            clipBehavior: Clip.hardEdge,
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(item.imagem), fit: BoxFit.cover),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black26,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Text(
                                    "1.8 km",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.3),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item.titlo,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
