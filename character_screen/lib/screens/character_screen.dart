import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final Character character =
        ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 13, 19, 27).withOpacity(0.5),
        title: Text(character.name),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(character.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: (screenSize.height * 0.75),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 29, 42, 59),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent, // Start with a transparent color
                    Color.fromARGB(255, 29, 42, 59), // Your background color
                  ],
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        character.name,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1000,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 29, 42, 59),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      character.description,
                      style: const TextStyle(
                          color: Colors.white,
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
