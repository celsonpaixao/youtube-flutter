import 'package:apartament_app/style/colors.dart';
import 'package:apartament_app/view/components/header.dart';
import 'package:apartament_app/view/components/inputcategoria.dart';
import 'package:apartament_app/view/components/inputdescricao.dart';
import 'package:apartament_app/view/components/inputendereco.dart';
import 'package:apartament_app/view/components/inputimagem.dart';
import 'package:apartament_app/view/components/inputpreco.dart';
import 'package:apartament_app/view/components/inputprovincia.dart';
import 'package:apartament_app/view/homepage.dart';
import 'package:flutter/material.dart';

class CreatApartament extends StatefulWidget {
  const CreatApartament({super.key});

  @override
  State<CreatApartament> createState() => _CreatApartamentState();
}

class _CreatApartamentState extends State<CreatApartament> {
  String selectedValue = 'Escolha a categoria';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SingleChildScrollView(
                  child: Column(
                children: [
                  InputDescricao(),
                  InputCategoria(),
                  InputPreco(),
                  InputProvincia(),
                  InputEndereco(),
                  InputImagem(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ButtomSave(),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtomSave extends StatelessWidget {
  const ButtomSave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.06,
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
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text(
          "Salvar",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
      ),
    );
  }
}
