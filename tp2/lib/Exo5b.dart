import 'package:flutter/material.dart';

class Exercice5b extends StatefulWidget {
  const Exercice5b({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice5b> createState() => _Exercice5bState();
}

class Tile extends StatelessWidget {
  String image;
  double factor;
  Alignment alignment;
  Function()? onTap;

  Tile(
      {Key? key,
      required this.alignment,
      required this.factor,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Align(
          alignment: alignment,
          widthFactor: factor,
          heightFactor: factor,
          child: Image.asset(image),
        ),
      ),
    );
  }

  croppedImageTile() {}
}

class _Exercice5bState extends State<Exercice5b> {
  List<Tile> tiles = [
    Tile(
      alignment: Alignment.topLeft,
      factor: 1 / 3,
      image: 'images/table',
    ),
    Tile(
      alignment: Alignment.topCenter,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.topRight,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.centerLeft,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.center,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.centerRight,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.bottomLeft,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.bottomCenter,
      factor: 1 / 3,
      image: '',
    ),
    Tile(
      alignment: Alignment.bottomRight,
      factor: 1 / 3,
      image: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        children: [
          createTileWidgetFrom(tiles[0]),
          createTileWidgetFrom(tiles[1]),
          createTileWidgetFrom(tiles[2]),
          createTileWidgetFrom(tiles[3]),
          createTileWidgetFrom(tiles[4]),
          createTileWidgetFrom(tiles[5]),
          createTileWidgetFrom(tiles[6]),
          createTileWidgetFrom(tiles[7]),
          createTileWidgetFrom(tiles[8]),
        ],
      ),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}
