import 'package:flutter/material.dart';
import 'package:login_screan/style/inputdecorations.dart';
import 'package:login_screan/style/textstyles.dart';

class JoinUsPasswordInput extends StatelessWidget {
  const JoinUsPasswordInput({
    super.key,
    required this.joinuspasswordcontroller,
  });

  final TextEditingController joinuspasswordcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: joinuspasswordcontroller,
      style: TextStyleInputLoginandJoinUs,
      validator: (value) {
        if (value.toString().isEmpty) {
          return 'Informe a password para continuar ';
        } else if (value.toString().length < 5) {
          return 'Esta password não é válido';
        }

        return null;
      },
      decoration: InputdecorationLoginandJoinUs('Password',Icons.lock),
    );
  }
}
