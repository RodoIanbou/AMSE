import 'package:flutter/material.dart';
import 'Exo1.dart';
import 'Exo2.dart';
import 'Exo3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercice 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Exercice3(),
    );
  }
}
