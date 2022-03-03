import 'package:flutter/material.dart';

class Exercice7 extends StatefulWidget {
  const Exercice7({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice7> createState() => _Exercice7State();
}

class _Exercice7State extends State<Exercice7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jeu de Tacquin'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/travaux.png"),
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
