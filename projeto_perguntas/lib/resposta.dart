import 'dart:ffi';

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  const Resposta(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(
        onPressed: null,
        child: Text(texto),
      ),
    );
  }
}
