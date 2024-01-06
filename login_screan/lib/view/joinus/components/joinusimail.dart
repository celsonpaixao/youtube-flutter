import 'package:flutter/material.dart';
import 'package:login_screan/style/inputdecorations.dart';
import 'package:login_screan/style/textstyles.dart';

class JoinUsEmailInput extends StatelessWidget {
  const JoinUsEmailInput({
    super.key,
    required this.joinusuemailcontroller,
  });

  final TextEditingController joinusuemailcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: joinusuemailcontroller,
      style: TextStyleInputLoginandJoinUs,
      validator: (value) {
         if (value.toString().isEmpty) {
          return 'Informe o email para continuar';
        }
        else if (value.toString().length < 5) {
          return 'Este email não é válido';
        }
       else  if (!value.toString().contains('@')) {
          return 'Um email precisa conter @';
        }
        return null;
        
      },
      decoration: InputdecorationLoginandJoinUs('Email', Icons.send_rounded),
    );
  }
}
