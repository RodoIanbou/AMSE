import 'package:flutter/material.dart';

class Exercice1 extends StatefulWidget {
  const Exercice1({Key? key}) : super(key: key);

  @override
  State<Exercice1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Génération d'une image aléatoire")),
        body: Center(
          child: Image.network('https://picsum.photos/512'),
        ));
  }
}
