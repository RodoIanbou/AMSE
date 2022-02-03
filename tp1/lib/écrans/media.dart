import 'package:flutter/material.dart';
import 'package:app_tp1/écrans/gamesdetails.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            padding: const EdgeInsets.all(8),
            children: List.generate(
                games.length,
                (index) => Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GamesDetail(games[index])),
                          );
                        },
                        child: ListTile(
                            title: Text(games[index].title,
                                style: TextStyle(fontSize: 18)),
                            subtitle: Text(games[index].description,
                                style: TextStyle(fontSize: 10)),
                            leading: ConstrainedBox(
                              constraints: BoxConstraints(),
                              child: Image.asset(games[index].image,
                                  fit: BoxFit.cover),
                            )),
                      ),
                    ))));
  }
}

class MediaModel {
  String image;
  String title;
  String description;
  String fulldescription;
  //constructor
  MediaModel(this.image, this.title, this.description, this.fulldescription);
}

final games = [
  MediaModel(
      'Images/AWayOut_jpg.jpg',
      'A Way out',
      ' A Way Out, une aventure exclusivement jouable en co-op ...',
      "A Way Out est un jeu vidéo action-aventure en coopération développé par Hazelight Studios et édité par Electronic Arts sur PlayStation 4, Xbox One et PC, sorti le 23 mars 2018 en téléchargement sur PlayStation 4, Xbox One et Windows1,2,3.Le titre est officiellement présenté le 10 juin 2017 au cours de l'E3 ; il s'agit du premier jeu du studio de développement2."),
  MediaModel(
      'Images/Bloodborne.jpg',
      'Bloodborne',
      'Bloodborne est un jeu vidéo de type action-RPG avec pour thème la dark fantasy ...',
      "Bloodborne (ブラッドボーン, Buraddobōn?) est un jeu vidéo de type action-RPG avec pour thème la dark fantasy développé par From Software en collaboration avec Japan Studio et édité par Sony Computer Entertainment. Il est commercialisé exclusivement sur PlayStation 4 en mars 2015.Les principales sources d'inspiration pour le jeu furent les récits fantastiques de Howard Phillips Lovecraft. Le jeu s'inspire, au niveau architectural, de lieux réels comme la Roumanie, la République tchèque et surtout de l'Époque victorienne.À sa sortie le jeu reçoit un accueil très positif de la part de la presse spécialisée."),
  MediaModel(
      'Images/dark-souls-remastered.jpg',
      'DarkSouls',
      'Dark Souls désigne officieusement une série de jeux vidéo action-RPG développée par le studio japonais FromSoftware, dite « série des Souls ...',
      "Dark Souls (ダークソウル, Dāku Souru?) est un jeu vidéo de type action-RPG développé par l'entreprise japonaise FromSoftware et édité par Namco Bandai pour l'édition NTSC-U/C et PAL. Il est sorti en septembre/octobre 2011 sur PlayStation 3 et Xbox 360 (hormis le Japon pour ce dernier) et en août 2012 sur PC. Une édition remastérisée, Dark Souls: Remastered est sortie en 2018 sur Nintendo Switch, PlayStation 4, Xbox One et PC.Le joueur incarne un humain maudit par la Marque Sombre le rendant mort-vivant, et évolue à Lordran dans un monde médiéval-fantastique à la troisième personne. Le jeu se concentre sur la maîtrise du gameplay et l'utilisation des compétences, armes, armures, magies et objets pour mener à bien les combats, en particulier contre les boss du jeu. Le level design pousse le joueur à explorer l'environnement. L'histoire se veut très cryptique, rythmée par de rares cinématiques, incitant le joueur à explorer le riche lore du jeu et favorisant l'imagination pour faire les liens dans ces bribes d'histoires, aboutissant à l'émergence de beaucoup de théories sur l'univers et l'histoire de Dark Souls."),
  MediaModel(
      'Images/demons souls.jpg',
      'Demons Souls',
      'Demons Souls est un jeu vidéo de type action-RPG exclusif à la console PlayStation 3, développé par From Software...',
      "Demon's Souls est un jeu vidéo de type action-RPG exclusif à la console PlayStation 3, développé par From Software.Il est édité par Sony Computer Entertainment le 5 février 2009 au Japon  par Atlus le 7 octobre 2009 en Amérique du Nord et édité par Namco Bandai le 25 juin 2010 en Europe.Un remake développé par Bluepoint Games, avec la collaboration de Japan Studio, est sorti en novembre 2020 à l'occasion de la sortie de la PlayStation 5."),
  MediaModel(
      'Images/Hitman.jpg',
      'Hitman ',
      'Hitman sur PS4 est un jeu infiltration-action jouable en solo...',
      "Hitman est un jeu vidéo d'action-aventure et d’infiltration développé par IO Interactive et édité par Square Enix, sixième inscription à la série de jeux vidéo Hitman. Le jeu est proposé au format épisodique en téléchargement depuis mars 2016 sur Steam qui est disponible sur Windows. Il est aussi disponible sur consoles que sont la PlayStation 4 et la Xbox One. Une version physique regroupant tous les épisodes est sortie le 31 janvier 2017. Le jeu sort également le 1er septembre 2020 sur Google Stadia. Il s'agit de la première saison d'une série de trois"),
  MediaModel(
    'Images/Uncharted.jpg',
    'Uncharted',
    'Uncharted est un jeu action aventure édité et développé par naughty Dog ...',
    "Uncharted: Drake's Fortune (litt. « Inexploré : Le Destin de Drake ») est un jeu vidéo développé par le studio américain Naughty Dog et édité par Sony Computer Entertainment, sorti en 2007 sur PlayStation 3.Le titre se présente comme un jeu d'action-aventure, mêlant des combats à armes à feu et des phases de plate-formes. Le récit suit le périple de l'aventurier moderne Nathan Drake qui, sur les traces de son supposé ancêtre Francis Drake, part en quête du trésor El Dorado, aidé de son ami Victor Sullivan et de la journaliste Elena Fisher.",
  ),
  MediaModel(
    'Images/Final Fantasy 15.jpg',
    'Final Fantasy 15',
    'Final Fantasy 15 est un RPG japonais édité et développé par Square Enix ...',
    "Final Fantasy XV (ファイナルファンタジーXV, Fainaru Fantajī Fifutīn?), annoncé originellement sous le titre Final Fantasy Versus XIII (ファイナルファンタジー ヴェルサスXIII, Fainaru Fantajī Verusasu Sātīn?)1, est un jeu vidéo de la célèbre série Final Fantasy, développé et édité par Square Enix, sorti le 29 novembre 2016 sur les consoles PlayStation 4 et Xbox One. Une Windows Edition et une Royal Edition sont sorties le 6 mars 20182. Le jeu sort également le 19 novembre 2019 sur Google Stadia.",
  ),
];
