
import 'package:flutter/material.dart';

main() => runApp( MyApp());

class MyApp extends  StatelessWidget {
 
  @override
  Widget  build (BuildContext context) {
    return MaterialApp(
      key: UniqueKey(),
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text('PERGUNTAS')
          ),
        ),
        body: const Text('Olá Flutter!!!'),
      ),
    );
  }
}