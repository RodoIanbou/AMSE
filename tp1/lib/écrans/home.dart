import 'package:flutter/material.dart';
import '../widgets/ecranTitre.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Video Games Library ! "),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/JV.jpg"),
            fit: BoxFit.contain,
          ),
        ),
        child: null,
      ),
    );
  }
}
