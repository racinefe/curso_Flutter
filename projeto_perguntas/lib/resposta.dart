import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onselected;
  
  const Resposta(this.texto, this.onselected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(50, 5, 50, 5),
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        onPressed: onselected,
        child: Text(texto),
      ),
    );
  }
}
