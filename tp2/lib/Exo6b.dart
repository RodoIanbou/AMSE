import 'package:flutter/material.dart';

class Exercice6b extends StatefulWidget {
  const Exercice6b({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice6b> createState() => _Exercice6bState();
}

class _Exercice6bState extends State<Exercice6b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Echange de 2 tuiles dans un plateau'),
      centerTitle: true,
    ));
  }
}

class Tile {
  String text;
  int status;
  Tile(this.text, this.status);
}

Widget tileActive(Tile tile) {
  return Container(
    child: Center(child: Text(tile.text)),
  );
}

Widget tileContour(Tile tile) {
  return Container(
    padding: const EdgeInsets.all(2),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 200, 50, 50)),
    child: Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 100, 100, 100)),
      child: Center(child: Text(tile.text)),
    ),
  );
}

Widget tileNonActive(Tile tile) {
  return Container(
    decoration: const BoxDecoration(color: Color.fromARGB(255, 100, 100, 100)),
    child: Center(child: Text(tile.text)),
  );
}
