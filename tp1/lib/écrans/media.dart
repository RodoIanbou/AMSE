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
      "A Way Out est un jeu vidéo action-aventure en coopération développé par Hazelight Studios et édité par Electronic Arts sur PlayStation 4, Xbox One et PC, sorti le 23 mars 2018 en téléchargement sur PlayStation 4, Xbox One et Windows1,2,3.Le titre est officiellement présenté le 10 juin 2017 au cours de l'E3 ; il s'agit du premier jeu du studio de développement2.Leo Caruso et Vincent Moretti sont deux prisonniers qui doivent apprendre à se connaître et à travailler ensemble pour pouvoir s'évader de leur lieu de détention et mener à bien leur cavale pour vivre une amitié unique."),
  MediaModel(
      'Images/Bloodborne.jpg',
      'Bloodborne',
      'Bloodborne est un jeu vidéo de type action-RPG avec pour thème la dark fantasy ...',
      "Bloodborne (ブラッドボーン, Buraddobōn?) est un jeu vidéo de type action-RPG avec pour thème la dark fantasy développé par From Software en collaboration avec Japan Studio et édité par Sony Computer Entertainment. Il est commercialisé exclusivement sur PlayStation 4 en mars 2015.Les principales sources d'inspiration pour le jeu furent les récits fantastiques de Howard Phillips Lovecraft. Le jeu s'inspire, au niveau architectural, de lieux réels comme la Roumanie, la République tchèque et surtout de l'Époque victorienne.À sa sortie le jeu reçoit un accueil très positif de la part de la presse spécialisée.Les premiers instants du jeu se font à la première personne, au travers des yeux d'un chasseur ; celui-ci voit qu'il est opéré par un vieil homme. Ce dernier explique qu'il lui transfuse du sang. Il avertit le chasseur qu'il commence un étrange voyage en quête du sang pâle qui semblera être un mauvais rêve. Le chasseur s'évanouit après avoir vu plusieurs créatures bestiales s'approcher de lui. Une fois que le joueur a créé son chasseur, le chasseur se réveille sur une table d'opération dans une petite pièce. Le chasseur quitte alors la pièce, découvre qu'il est à Yharnam, plus précisément à la clinique de Iosefka. Il constate que le monde est rempli de dangereux monstres et mystères, et commence son long voyage."),
  MediaModel(
      'Images/dark-souls-remastered.jpg',
      'DarkSouls',
      'Dark Souls désigne officieusement une série de jeux vidéo action-RPG développée par le studio japonais FromSoftware, dite « série des Souls ...',
      "Dark Souls (ダークソウル, Dāku Souru?) est un jeu vidéo de type action-RPG développé par l'entreprise japonaise FromSoftware et édité par Namco Bandai pour l'édition NTSC-U/C et PAL. Il est sorti en septembre/octobre 2011 sur PlayStation 3 et Xbox 360 (hormis le Japon pour ce dernier) et en août 2012 sur PC. Une édition remastérisée, Dark Souls: Remastered est sortie en 2018 sur Nintendo Switch, PlayStation 4, Xbox One et PC.Le joueur incarne un humain maudit par la Marque Sombre le rendant mort-vivant, et évolue à Lordran dans un monde médiéval-fantastique à la troisième personne. Le jeu se concentre sur la maîtrise du gameplay et l'utilisation des compétences, armes, armures, magies et objets pour mener à bien les combats, en particulier contre les boss du jeu. Le level design pousse le joueur à explorer l'environnement. L'histoire se veut très cryptique, rythmée par de rares cinématiques, incitant le joueur à explorer le riche lore du jeu et favorisant l'imagination pour faire les liens dans ces bribes d'histoires, aboutissant à l'émergence de beaucoup de théories sur l'univers et l'histoire de Dark Souls."),
  MediaModel(
      'Images/demons souls.jpg',
      'Demons Souls',
      'Demons Souls est un jeu vidéo de type action-RPG exclusif à la console PlayStation 3, développé par From Software...',
      "Demon's Souls est un jeu vidéo de type action-RPG exclusif à la console PlayStation 3, développé par From Software.Il est édité par Sony Computer Entertainment le 5 février 2009 au Japon  par Atlus le 7 octobre 2009 en Amérique du Nord et édité par Namco Bandai le 25 juin 2010 en Europe.Un remake développé par Bluepoint Games, avec la collaboration de Japan Studio, est sorti en novembre 2020 à l'occasion de la sortie de la PlayStation 5. Se déroulant dans un univers médiéval sombre, le jeu prend place dans le royaume fictif de Bolétaria, qui a été englouti par un brouillard épais et envahi par des démons en raison de la soif de puissance du monarque, le roi Allant XII. Le joueur prend le contrôle d'un héros chargé de terrasser les démons et ramener la paix à Bolétaria. Ce héros peut être personnalisé et peut évoluer au fil du jeu. Mais l'aventure ne sera pas de tout repos, la mort étant très présente dans Demon's Souls. En effet, le titre est souvent considéré comme un des jeux les plus difficiles et exigeants de ces dernières années."),
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
    "Final Fantasy XV (ファイナルファンタジーXV, Fainaru Fantajī Fifutīn), annoncé originellement sous le titre Final Fantasy Versus XIII (ファイナルファンタジー ヴェルサスXIII, Fainaru Fantajī Verusasu Sātīn?)1, est un jeu vidéo de la célèbre série Final Fantasy, développé et édité par Square Enix, sorti le 29 novembre 2016 sur les consoles PlayStation 4 et Xbox One. Une Windows Edition et une Royal Edition sont sorties le 6 mars 20182. Le jeu sort également le 19 novembre 2019 sur Google Stadia.",
  ),
  MediaModel(
      'Images/TheWitcher3.jpg',
      'The Witcher 3',
      "The Witcher est une série de jeux vidéo développée par CD Projekt Red, à partir des livres éponymes de Andrzej Sapkowski. ",
      "The Witcher est une série de jeux vidéo développée par CD Projekt Red, à partir des livres éponymes de Andrzej Sapkowski. Le premier jeu, intitulé The Witcher, est sorti en 2007. Sa suite, The Witcher 2: Assassins of Kings est sorti 2011, tandis que le dernier opus de la saga, The Witcher 3: Wild Hunt, est sorti en 2015. Cette trilogie, composée de jeux de type RPG, est le cœur de la saga.CD Projekt a également développé et publié deux jeux dans le même univers : Gwent: The Witcher Card Game et Thronebreaker: The Witcher Tales.En 2020, l'éditeur a annoncé sa volonté de poursuivre la série de RPG dans une nouvelle direction, avec un nouveau protagoniste, dans la logique de leur intention d'origine consistant à conclure le cycle de Geralt de Riv avec les trois premiers jeux et leurs contenus additionnels respectifs. La sortie de ce nouveau jeu est attendue à l'horizon 20241."),
  MediaModel(
      'Images/god-of-war-jeu-ps4.jpg',
      'God of War',
      "God of War est un jeu vidéo d'action-aventure développé par SIE Santa Monica Studio et édité par Sony Interactive Entertainment, sorti le 20 avril 2018 sur PlayStation 4. Il s'agit du huitième épisode de la série God of War.",
      "God of War est un jeu vidéo d'action-aventure développé par SIE Santa Monica Studio et édité par Sony Interactive Entertainment, sorti le 20 avril 2018 sur PlayStation 4. Il s'agit du huitième épisode de la série God of War.Le jeu est pensé comme un renouveau de la série et est basé sur la mythologie nordique, contrairement aux précédents jeux qui étaient basés sur la mythologie grecque. Ce renouveau de la série s'est fait dans un but de modernisation du propos tenu par le jeu et de son gameplay, favorisé par l'insertion d'un nouveau personnage : Atreus, fils de Kratos, personnage que l'on incarne toujours. Cette relation fils-père rend l'histoire plus sérieuse, changeant des anciens opus de la série, ce qui a beaucoup plu à la majorité des joueurs."),
  MediaModel(
    'Images/FF13.jpg',
    'Final Fantasy 13',
    'Final Fantasy 13 est un RPG japonais édité et développé par Square Enix ...',
    "Final Fantasy XV (ファイナルファンタジーXV, Fainaru Fantajī Fifutīn), annoncé originellement sous le titre Final Fantasy Versus XIII (ファイナルファンタジー ヴェルサスXIII, Fainaru Fantajī Verusasu Sātīn?)1, est un jeu vidéo de la célèbre série Final Fantasy, développé et édité par Square Enix, sorti le 29 novembre 2016 sur les consoles PlayStation 4 et Xbox One. Une Windows Edition et une Royal Edition sont sorties le 6 mars 20182. Le jeu sort également le 19 novembre 2019 sur Google Stadia.",
  ),
  MediaModel(
      'Images/TheWitcher2.jpg',
      'The Witcher 2',
      "The Witcher  2 est une série de jeux vidéo développée par CD Projekt Red, à partir des livres éponymes de Andrzej Sapkowski. ",
      "Basé sur l'univers médiéval-fantastique d'Andrzej Sapkowski, le jeu propose d'incarner Geralt de Riv, un « Sorceleur » (Witcher en anglais), un chasseur de monstres.The Witcher 2: Assassins of Kings (en polonais : Wiedźmin 2: Zabójcy królów) est la suite du jeu vidéo The Witcher développé par le studio CD Projekt. Il est sorti le 17 mai 2011 sur PC équipés de Windows. La version dématérialisée du jeu, vendue sur Steam et GOG.com, est éditée par CD Projekt. Les versions boîtes sont quant à elles éditées par Namco Bandai Games en Europe, et par Atari Inc. en Amérique du Nord.Une version totalement repensée pour la console est sortie sur Xbox 360 en avril 2012, un an après la sortie PC.Le jeu est rendu rétrocompatible pour la console Xbox One en janvier 2016."),
  MediaModel(
      'Images/god-of-war-3.jpg',
      'God of War 3',
      "God of War est un jeu vidéo d'action-aventure développé par SIE Santa Monica Studio et édité par Sony Interactive Entertainment...",
      "God of War III est un jeu vidéo d'action-aventure de type beat them all sorti en 2010 sur PlayStation 3 et développé par SCE Santa Monica Studio. C'est le cinquième opus de la série de jeu God of War et le septième dans l'ordre chronologique. Il fait suite directement à God of War II (2007) publié sur PlayStation 2.Cet opus obtient un gros budget pour son développement, et devient un succès critique et commercial.Pour célébrer le 10e anniversaire de la franchise, une version remastérisée intitulée God of War III Remastered est sorti en juillet 2015 sur PlayStation 4."),
];
