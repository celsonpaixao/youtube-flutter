import 'package:flutter/material.dart';

class InputEndereco extends StatefulWidget {
  const InputEndereco({super.key});

  @override
  State<InputEndereco> createState() => _InputEnderecoState();
}

class _InputEnderecoState extends State<InputEndereco> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Endereço',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 14.5,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Digite o endereço',
                  hintStyle: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      color: Colors.black38),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
