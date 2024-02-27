
import 'package:flutter/material.dart';

main() => runApp( MyApp());

class MyApp extends  StatelessWidget {
 
  @override
  Widget  build (BuildContext context) {
    return MaterialApp(
      key: UniqueKey(),
      home: const Center(
        child: Text('Olá Flutter!!!'),
      ),
    );
  }
}