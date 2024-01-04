import 'package:flutter/material.dart';

class InputImagem extends StatefulWidget {
  const InputImagem({super.key});

  @override
  State<InputImagem> createState() => _InputImagemState();
}

class _InputImagemState extends State<InputImagem> {
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
                          'Imagem',
                           style: TextStyle(fontFamily: 'Raleway', fontSize: 14.5, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Escolha a imagem...',
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