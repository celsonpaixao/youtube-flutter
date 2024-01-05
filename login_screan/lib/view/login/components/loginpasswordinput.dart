import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({
    super.key,
    required this.loginpasswordcontroller,
  });

  final TextEditingController loginpasswordcontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: true,
      controller: loginpasswordcontroller,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black54,
        fontSize: 13
      ),
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
          fontFamily: 'Poppins'
        ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: bluesecundary, width: 3),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: bluesecundary, width: 3),
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: blue3,
          suffixIcon: Icon(
            Icons.send_rounded,
            color: bluesecundary,
          ),
          ),
    );
  }
}
