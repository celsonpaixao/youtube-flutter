import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';

class LoginUsernameInput extends StatelessWidget {
  const LoginUsernameInput({
    super.key,
    required this.loginusernamecontroller,
  });

  final TextEditingController loginusernamecontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: loginusernamecontroller,
      style:
          TextStyle(fontFamily: 'Poppins', color: Colors.black54, fontSize: 13),
      decoration: InputDecoration(
        hintText: 'Username or Email',
        hintStyle: TextStyle(fontFamily: 'Poppins'),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bluesecundary, width: 3),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bluesecundary, width: 3),
            borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: blue3,
        suffixIcon: Icon(
          Icons.person_2_rounded,
          color: bluesecundary,
        ),
      ),
    );
  }
}
