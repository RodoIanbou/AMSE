import 'package:flutter/material.dart';

class Exercice5a extends StatefulWidget {
  const Exercice5a({Key? key}) : super(key: key);

  @override
  _Exercice5aState createState() => _Exercice5aState();
}

class _Exercice5aState extends State<Exercice5a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Génération d'un plateau de tuile de couleur"),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 3,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Colors.blueAccent,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 2"),
              color: Colors.lightGreen,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 3"),
              color: Colors.green[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 4"),
              color: Colors.pink[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 5"),
              color: Colors.purple[900],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 6"),
              color: Colors.blue[900],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 7"),
              color: Colors.red[600],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 8"),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 9"),
              color: Colors.blue[400],
            ),
          ],
        ));
  }
}
