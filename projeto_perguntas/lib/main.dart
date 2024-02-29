
// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp( MyApp());


class _PerguntaAppState extends State<MyApp>{

  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    
    print(_perguntaSelecionada);
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
             Questao(perguntas[_perguntaSelecionada]),
              ElevatedButton(
              onPressed: _responder, 
              child:  Text('(A) Ambas possuem núcleo.')
             ),
             ElevatedButton(
              onPressed: _responder, 
              child:  Text('(B) Células procarióticas possuem núcleo, e células eucarióticas não possuem.')
             ),
             ElevatedButton(
              onPressed: _responder, 
              child:  Text('(C)  Células eucarióticas possuem núcleo, e células procarióticas não possuem.')
             ),
             ElevatedButton(
              onPressed: _responder, 
              child:  Text('(D) Nenhuma das opções anteriores.')
             ),
          ],
        ),
      ),
    );
  }

}
class MyApp extends  StatefulWidget {
  const MyApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}