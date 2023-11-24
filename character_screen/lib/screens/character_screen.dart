import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';
import 'dart:ui';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late ExpandableController _expandableController;

  @override
  void initState() {
    super.initState();
    _expandableController = ExpandableController();
  }

  double _startX = 0.0;
  int mainImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final Character character =
        ModalRoute.of(context)!.settings.arguments as Character;

    // Main screen scafold
    return Scaffold(
      // Appbar of the screen
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 19, 28, 39),
      ),
      // Container for the background image
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(character.mainImagePaths[mainImageIndex]),
            fit: BoxFit.cover,
          ),
        ),
        // Blurr effect
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.transparent,
            // Container for the second image
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(character.mainImagePaths[mainImageIndex]),
                  fit: BoxFit.fitHeight,
                ),
              ),
              // Main ListView of the screen
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  //Container to limit the view of the background
                  Container(
                    height: screenSize.height <= 250
                        ? screenSize.height
                        : screenSize.height - 250,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('button $mainImageIndex');
                              if ((mainImageIndex + 1) <
                                  character.mainImagePaths.length) {
                                setState(() {
                                  mainImageIndex++;
                                });
                              }
                              print('button $mainImageIndex');
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if ((mainImageIndex - 1) >= 0) {
                                setState(() {
                                  mainImageIndex--;
                                });
                              }
                              print('button $mainImageIndex');
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  CharacterDisplay(character),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container CharacterDisplay(Character character) {
    // Main container of the Character Display section
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
              color: Color.fromARGB(255, 29, 42, 59),
            ),
          ),
          Center(
            // Main box for the character details
            child: SizedBox(
              width: 400,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    bottom: 100,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BasicDescription(character),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.red,
                              margin: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.blue),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "title",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.red,
                              margin: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.blue),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "title",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.red,
                              margin: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.blue),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "title",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.red,
                              margin: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.blue),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "title",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container BasicDescription(Character character) {
    // Main container for the details section and column with cross axis on left
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alias display
          Text(
            character.bestAlias ?? '',
            style: const TextStyle(
              color: Color.fromARGB(255, 252, 255, 85),
            ),
          ),
          // Name display
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              character.name,
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Like Rank display
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 54, 85, 131),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RANK: ${character.favs}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FAVOURITES: ${character.favs}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // Expandable text
          ExpandablePanel(
            collapsed: Text(
              character.descriptionShort,
              style: const TextStyle(
                color: Color.fromARGB(255, 174, 184, 197),
              ),
            ),
            expanded: Text(
              character.descriptionLong ?? " ",
              softWrap: true,
              style: const TextStyle(
                color: Color.fromARGB(255, 174, 184, 197),
              ),
            ),
            theme: const ExpandableThemeData(
              iconColor: Colors.blue,
              useInkWell: false,
            ),
            controller: _expandableController,
          ),
          // Expandable text TRIGGER
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  if (character.descriptionLong != null)
                    GestureDetector(
                      onTap: () {
                        _expandableController.toggle();
                        setState(() {});
                      },
                      child: Text(
                        _expandableController.expanded
                            ? "Show Less..."
                            : "Read More...",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 252, 255, 85),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
