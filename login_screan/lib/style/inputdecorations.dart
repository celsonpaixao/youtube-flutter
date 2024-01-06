import 'package:flutter/material.dart';
import 'package:login_screan/style/colors.dart';

InputDecoration InputdecorationLoginandJoinUs(String text, IconData icon) {
  return InputDecoration(
    contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
    hintText: text,
    hintStyle: TextStyle(fontFamily: 'Poppins'),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: bluesecundary, width: 3),
        borderRadius: BorderRadius.circular(15)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: bluesecundary, width: 3),
        borderRadius: BorderRadius.circular(15)),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 3),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 3),
      borderRadius: BorderRadius.circular(15),
    ),
    
    filled: true,
    fillColor: blue3,
    suffixIcon: Icon(
      icon,
      color: bluesecundary,
    ),
  );
}
