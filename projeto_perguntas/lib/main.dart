// ignore_for_file: prefer_const_constructors, avoid_print, library_private_types_in_public_api
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(MyApp());

class _PerguntaAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é um animal?',
      'alternativas': [
        {'texto': 'Casa', 'nota': 0},
        {'texto': 'Carro', 'nota': 0},
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Colher', 'nota': 0},
      ],
    },
    {
      'texto': 'Qual é uma cor?',
      'alternativas': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Faca', 'nota': 0},
        {'texto': 'Relógio', 'nota': 0},
        {'texto': 'Quadro', 'nota': 0},
      ],
    },
    {
      'texto': 'Qual é uma Fruta?',
      'alternativas': [
        {'texto': 'Chave', 'nota': 0},
        {'texto': 'Radio', 'nota': 0},
        {'texto': 'Celular', 'nota': 0},
        {'texto': 'Morango', 'nota': 10},
      ],
    },
  ];

  void _responder(int nota) {
    if (temperguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += nota;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temperguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: temperguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal),
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
