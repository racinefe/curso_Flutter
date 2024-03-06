// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(MyApp());

class _PerguntaAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
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
      'alternativas': ['Chave', 'Radio', 'Celular', 'Morango'],
    },
  ];

  void _responder() {
    if (temperguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temperguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temperguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['alternativas']
        : [];

    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: temperguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas
                      .map((text) => Resposta(text, _responder))
                      .toList(),
                ],
              )
            : null,
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
