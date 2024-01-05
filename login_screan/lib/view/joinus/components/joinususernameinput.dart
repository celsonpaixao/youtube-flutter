import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';

class JoinUsUsernameInput extends StatelessWidget {
  const JoinUsUsernameInput({
    super.key,
    required this.joinusnusernamecontroller,
  });

  final TextEditingController joinusnusernamecontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: joinusnusernamecontroller,
      style:
          TextStyle(fontFamily: 'Poppins', color: Colors.black54, fontSize: 13),
      decoration: InputDecoration(
        hintText: 'Username',
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
