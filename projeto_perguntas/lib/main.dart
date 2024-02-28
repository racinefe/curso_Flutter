
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

main() => runApp( MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends  StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }
  @override
  Widget  build (BuildContext context) {
    final perguntas = [
      'Qual é a principal diferença entre células procarióticas e eucarióticas?',
      'Qual é o órgão responsável pela troca gasosa nos seres humanos?',
      'O que representa a combinação de alelos de um organismo?',
    ];
    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text('Perguntas')
          ),
        ),
        body:  Column(
          children: <Widget> [
             Text(perguntas[0]),
             ElevatedButton(
              onPressed: responder, 
              child:  Text('(A) Ambas possuem núcleo.')
             ),
             ElevatedButton(
              onPressed: responder, 
              child:  Text('(B) Células procarióticas possuem núcleo, e células eucarióticas não possuem.')
             ),
             ElevatedButton(
              onPressed: responder, 
              child:  Text('(C)  Células eucarióticas possuem núcleo, e células procarióticas não possuem.')
             ),
             ElevatedButton(
              onPressed: responder, 
              child:  Text('(D) Nenhuma das opções anteriores.')
             ),
          ],
        ),
      ),
    );
  }
}