import 'package:flutter/material.dart';

class InputProvincia extends StatefulWidget {
  const InputProvincia({super.key});

  @override
  State<InputProvincia> createState() => _InputProvinciaState();
}

class _InputProvinciaState extends State<InputProvincia> {
   final dropValueProvincia= ValueNotifier('');
  final dropProcincias = [
    "Província 1",
    "Província 2",
    "Província 3",
    "Província 4",
    "Província 5",
    
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
                          'Província',
                          style: TextStyle(fontFamily: 'Raleway', fontSize: 14.5, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)
                          ),
                          child: ValueListenableBuilder(
                              valueListenable: dropValueProvincia,
                              builder: (BuildContext contex, String value, _) {
                                return DropdownButton<String>(
                                  underline: const SizedBox(),
                                  iconSize: 0,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Província",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Raleway', fontSize: 14.5)),
                                  ),
                                  alignment: Alignment.center,
                                  onChanged: (opcao) =>
                                      dropValueProvincia.value = opcao.toString(),
                                  items: dropProcincias
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