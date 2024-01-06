import 'package:flutter/material.dart';
import 'package:login_screan/style/inputdecorations.dart';
import 'package:login_screan/style/textstyles.dart';

class LoginUsernameInput extends StatelessWidget {
  const LoginUsernameInput({
    super.key,
    required this.loginusernamecontroller,
  });

  final TextEditingController loginusernamecontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.black45,
      controller: loginusernamecontroller,
      validator: (value) {
        if (value.toString().isEmpty) {
          return 'Informe o email ou um nome de usuário para continuar';
        }
        else if (value.toString().length < 5) {
          return 'Este email não é válido';
        }
       else  if (!value.toString().contains('@')) {
          return 'Um email precisa conter @';
        }
        return null;
      },
      style: TextStyleInputLoginandJoinUs,
      decoration: InputdecorationLoginandJoinUs('Username or Email',Icons.send_rounded),
    );
  }
}
