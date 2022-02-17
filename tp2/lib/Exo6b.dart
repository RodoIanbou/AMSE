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
      title: Text('Moving Tiles'),
      centerTitle: true,
    ));
  }
}
