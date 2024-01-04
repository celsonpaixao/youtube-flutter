import 'package:flutter/material.dart';

class InputPreco extends StatefulWidget {
  const InputPreco({super.key});

  @override
  State<InputPreco> createState() => _InputPrecoState();
}

class _InputPrecoState extends State<InputPreco> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Preço',
                           style: TextStyle(fontFamily: 'Raleway', fontSize: 14.5, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Digite o preço',
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