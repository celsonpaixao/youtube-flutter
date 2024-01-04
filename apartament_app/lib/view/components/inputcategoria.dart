import 'package:flutter/material.dart';

class InputCategoria extends StatefulWidget {
  const InputCategoria({super.key});

  @override
  State<InputCategoria> createState() => _InputCategoriaState();
}

class _InputCategoriaState extends State<InputCategoria> {
    final dropValuecategoria = ValueNotifier('');
  final dropCategoria = [
    "Categoria 1",
    "Categoria 2",
    "Categoria 3",
    "Categoria 4",
  ];
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
                          'Categoria',
                          style: TextStyle(fontFamily: 'Raleway', fontSize: 14.5, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                          ),
                          child: ValueListenableBuilder(
                              valueListenable: dropValuecategoria,
                              builder: (BuildContext contex, String value, _) {
                                return DropdownButton<String>(
                                  underline: const SizedBox(),
                                  iconSize: 0,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Categoria 1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Raleway', fontSize: 14.5)),
                                  ),
                                  alignment: Alignment.center,
                                  onChanged: (opcao) =>
                                      dropValuecategoria.value = opcao.toString(),
                                  items: dropCategoria
                                      .map((escolha) => DropdownMenuItem(
                                            alignment: Alignment.center,
                                            value: escolha,
                                            child: Text(
                                              escolha,
                                              style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 14.5,
                                                  color: Colors.black38),
                                            ),
                                          ))
                                      .toList(),
                                  value: (value.isEmpty) ? null : value,
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                );
  }
}