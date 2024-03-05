// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(MyApp());

class _PerguntaAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a principal diferença entre células procarióticas e eucarióticas?',
      'Qual é o órgão responsável pela troca gasosa nos seres humanos?',
      'O que representa a combinação de alelos de um organismo?',
    ];
    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta A'),
            Resposta('Resposta B'),
            Resposta('Resposta C'),
            Resposta('Resposta D'),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
