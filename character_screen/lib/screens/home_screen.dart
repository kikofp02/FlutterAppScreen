import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';

const List<Character> characters = [
  Character(
      name: 'Character 1',
      description: 'Description 1',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 2',
      description: 'Description 2',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 3',
      description: 'Description 3',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 4',
      description: 'Description 4',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 5',
      description: 'Description 5',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 6',
      description: 'Description 6',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 7',
      description: 'Description 7',
      imagePath: 'assets/images/BoaHancockDance.gif'),
  Character(
      name: 'Character 8',
      description: 'Description 8',
      imagePath: 'assets/images/BoaHancockDance.gif'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;
    //final itemsPerRow = (screenSize.width / 150).floor();

    return Scaffold(
      backgroundColor: Color.fromARGB(221, 29, 42, 59),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 13, 19, 27).withOpacity(0.5),
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
            color: Color.fromARGB(221, 13, 19, 27).withOpacity(0.5),
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
