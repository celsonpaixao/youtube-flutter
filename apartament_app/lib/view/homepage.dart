import 'package:apartament_app/style/colors.dart';
import 'package:apartament_app/view/components/homebody.dart';
import 'package:apartament_app/view/components/homedrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      openRatio: 0.6,
      controller: _advancedDrawerController,
      backdropColor: blueprimary,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    _advancedDrawerController.showDrawer();
                  },
                  child: Row(
                    children: [
                      Text(
                        "Jakarta",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Releway',
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  )),
              Icon(Icons.notifications)
            ],
          ),
        ),
        body: HomeBody(),
      ),
      drawer: HomeDrawer(),
    );
  }
}
