import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';

const List<Character> characters = [
  Character(
      name: 'Boa Hancock',
      descriptionShort: 'She is one of the Shichibukai and captain of the Kuja Pirates. She is the Empress of the Amazon Tribe on the Isle of Woman.',
      imagePath: 'assets/images/BoaMudae.jpg',
      bestAlias: 'PIRATE EMPRESS',
      rank: 1,
      descriptionLong: 'She is one of the Shichibukai and captain of the Kuja Pirates. She is the Empress of the Amazon Tribe on the Isle of Woman. She detests the World Government, but wants to keep her Shichibukai title. Her immense beauty belies her cruel personality, as shown when she kicks a kitten in her way.'),
  Character(
      name: 'Character 2',
      descriptionShort: 'Description 2',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 3',
      descriptionShort: 'Description 3',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 4',
      descriptionShort: 'Description 4',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 5',
      descriptionShort: 'Description 5',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 6',
      descriptionShort: 'Description 6',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 7',
      descriptionShort: 'Description 7',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 8',
      descriptionShort: 'Description 8',
      imagePath: 'assets/images/BoaHancockDance.gif'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;
    //final itemsPerRow = (screenSize.width / 150).floor();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 42, 59),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 28, 39),
        title: const Text(
          "Pick your waifu:",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: characters.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 2 / 3,
        ),
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed("/characterDemo", arguments: characters[index]),
            child: CharacterGridItem(index: index),
          );
        },
      ),
    );
  }
}

class CharacterGridItem extends StatelessWidget {
  const CharacterGridItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridTile(
        footer: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: Color.fromARGB(255, 19, 28, 39).withOpacity(0.5),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                characters[index].name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: AssetImage(characters[index].imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
