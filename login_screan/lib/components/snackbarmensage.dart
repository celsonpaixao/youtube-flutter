import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ShowSnackBar({
  required BuildContext context,
  required String text,
  bool iserror = true,
}) {
  SnackBar snackBar = SnackBar(
    content: Text(text),
    duration: Duration(seconds: 5),
    backgroundColor: iserror == true ? Colors.red : Colors.green,
    showCloseIcon: true,
    // action: SnackBarAction(
    //   label: 'Ok',
    //   textColor: Colors.white,
    //   onPressed: () {
    //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
    //   },
    // ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
