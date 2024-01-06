import 'package:flutter/material.dart';
import 'package:login_screan/style/inputdecorations.dart';
import 'package:login_screan/style/textstyles.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({
    super.key,
    required this.loginpasswordcontroller,
  });

  final TextEditingController loginpasswordcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: loginpasswordcontroller,
      style: TextStyleInputLoginandJoinUs,
      validator: (value) {
         if (value.toString().isEmpty) {
          return 'Informe a password para continuar ';
        }
        else if (value.toString().length < 5) {
          return 'Esta password não é válido';
        }
       
        return null;
      },
      
       decoration: InputdecorationLoginandJoinUs('Password',Icons.lock),
    );
  }
}
