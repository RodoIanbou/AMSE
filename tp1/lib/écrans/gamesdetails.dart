import 'package:flutter/material.dart';
import 'package:app_tp1/écrans/media.dart';

class GamesDetail extends StatelessWidget {
  final MediaModel Games;

  const GamesDetail(this.Games);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(Games.image),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              Games.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(Games.fulldescription),
          ),
        ],
      ),
    );
  }
}
