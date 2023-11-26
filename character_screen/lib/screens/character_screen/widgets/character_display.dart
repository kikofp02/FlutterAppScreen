import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';
import 'package:character_screen/screens/character_screen/widgets/basic_description.dart';
import 'package:character_screen/widgets/titleItem_widgets.dart';

class CharacterDisplay extends StatelessWidget {
  const CharacterDisplay({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 29, 42, 59),
              // Top color gradient
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color.fromARGB(255, 29, 42, 59),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(255, 29, 42, 59),
            ),
          ),
          // Main column for the character details
          Column(
            children: [
              Center(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: BasicDescription(
                      character: character,
                    ),
                  ),
                ),
              ),
              if (character.filmography != null)
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Filmography:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 174, 184, 197),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitlesScrollableHorizontalDisplay(
                          titles: character.filmography!),
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(
                  left: 40,
                  right: 20,
                ),
                height: 100,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    Container(
                      height: 1,
                      width: 300,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 400,
                          colors: [
                            Color.fromARGB(255, 54, 85, 131),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "WaifuTracker.net is a property of KikoFP Co.,Ltd. ©2023 All Rights Reserved.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      "This site is protected by Me and Myself and I.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 7,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
