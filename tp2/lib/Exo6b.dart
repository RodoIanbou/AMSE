import 'package:flutter/material.dart';

class Exercice6b extends StatefulWidget {
  const Exercice6b({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice6b> createState() => _Exercice6bState();
}

class _Exercice6bState extends State<Exercice6b> {
  int activeTilePos = 5;
  double tilesDivisions = 4.0;
  List<Tile> tiles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Echange de 2 tuiles dans un plateau'),
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

// Classe d'une case du plateau

class Tile {
  String text;
  int status;
  Tile(this.text, this.status);
}

// Widget de la tile qui vient d'être touchée

Widget tileActive(Tile tile) {
  return Container(
    child: Center(child: Text(tile.text)),
  );
}
// widget des tile qui entourent la tile active

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
// Reste des tile (non active)

Widget tileNonActive(Tile tile) {
  return Container(
    decoration: const BoxDecoration(color: Color.fromARGB(255, 100, 100, 100)),
    child: Center(child: Text(tile.text)),
  );
}

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, required this.tile}) : super(key: key);
  final Tile tile;

  @override
  Widget build(BuildContext context) {
    switch (tile.status) {
      case 1:
        return tileContour(tile);
      case 2:
        return tileContour(tile);
      default:
        return tileContour(tile);
    }
  }
}
