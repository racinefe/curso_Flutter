import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, {super.key});
  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'pontuação ${pontuacao.toString()}\n Vamos Estudar mais!';
    } else if (pontuacao < 20) {
      return 'pontuação ${pontuacao.toString()}\n Precisa Melhora!';
    } else if (pontuacao < 30) {
      return 'pontuação ${pontuacao.toString()}\n Isso foi Bom!!';
    } else {
      return 'pontuação ${pontuacao.toString()}\n Que Incrivel!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
