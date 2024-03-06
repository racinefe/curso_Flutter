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
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é um animal?',
        'alternativas': ['Casa', 'Carro', 'Cachorro', 'Colher'],
      },
      {
        'texto': 'Qual é uma cor?',
        'alternativas': ['Azul', 'Faca', 'Relógio', 'Quadro'],
      },
      {
        'texto': 'Qual é uma Fruta?',
        'alternativas': ['Chave', 'Radio', 'Celular', 'Pera'],
      },
    ];

    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['alternativas'];

    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((text) => Resposta(text, _responder)).toList(),
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
