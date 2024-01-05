import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';

class JoinUsEmailInput extends StatelessWidget {
  const JoinUsEmailInput({
    super.key,
    required this.joinusuemailcontroller,
  });

  final TextEditingController joinusuemailcontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: joinusuemailcontroller,
      style:
          TextStyle(fontFamily: 'Poppins', color: Colors.black54, fontSize: 13),
      decoration: InputDecoration(
        hintText: 'Email',
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
          Icons.send_rounded,
          color: bluesecundary,
        ),
      ),
    );
  }
}
