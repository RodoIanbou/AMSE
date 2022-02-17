import 'package:flutter/material.dart';
import "Exo1.dart";
import 'Exo2.dart';
import 'Exo4.dart';
import 'Exo5a.dart';
import 'Exo5b.dart';

import 'Exo6a.dart';
import 'Exo6b.dart';

class Exercice3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      body: Container(
        child: ListView(
          children: const [
            MenuTile(
                title: " Exercice 1 : Génération d'image aléatoire ",
                exercice: Exercice1()),
            MenuTile(
                title: " Exercice 2 : Transformation d'une image aléatoire ",
                exercice: Exercice2()),
            MenuTile(
                title: " Exercice 4 : Génération d'une tuile",
                exercice: Exercice4()),
            MenuTile(
                title:
                    " Exercice 5a : Génération d'un plateau de tuile de couleur ",
                exercice: Exercice5a()),
            MenuTile(
                title:
                    " Exercice 5b : Séquencage d'une image en un plateau de tuiles",
                exercice: Exercice5b()),
            MenuTile(
                title: " Exercice 6a : Animation d'une tuile ",
                exercice: Exercice6a()),
            MenuTile(
                title: " Exercice 6b : Ecchange de 2 tuiles dans un plateau ",
                exercice: Exercice6b()),
          ],
        ),
      ),
    );
  }
}

class MenuTile<Exercice> extends StatelessWidget {
  const MenuTile({Key? key, required this.title, required this.exercice})
      : super(key: key);
  final String title;
  final Widget exercice;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          onTapMenuTile(context);
        },
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }

  void onTapMenuTile(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return exercice;
        },
      ),
    );
  }
}
