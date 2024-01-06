import 'package:flutter/material.dart';
import 'package:login_screan/style/inputdecorations.dart';
import 'package:login_screan/style/textstyles.dart';

class JoinUsUsernameInput extends StatelessWidget {
  const JoinUsUsernameInput({
    super.key,
    required this.joinusnusernamecontroller,
  });

  final TextEditingController joinusnusernamecontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: joinusnusernamecontroller,
      style: TextStyleInputLoginandJoinUs,
      validator: (value) {
        if (value.toString().isEmpty) {
          return 'Informe um nome de usuário para continuar';
        } else if (value.toString().length < 5) {
          return 'Este nome não é válido';
        }

        return null;
      },
      decoration: InputdecorationLoginandJoinUs('Username', Icons.person_2_rounded),
    );
  }
}
