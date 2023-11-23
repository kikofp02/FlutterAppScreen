import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';

Future<List<Character>> characters = loadCharacters();

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
