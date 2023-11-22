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

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final Character character =
        ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 19, 28, 39),
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
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(character.imagePath),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    height: (screenSize.height - 250),
                  ),
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
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 29, 42, 59),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.0, 0.02),
          colors: [
            Colors.transparent,
            Color.fromARGB(255, 29, 42, 59),
          ],
          stops: [0.0, 0.4],
        ),
      ),
      child: Center(
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
                              padding: EdgeInsets.only(bottom: 20, left: 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
                              padding: EdgeInsets.only(bottom: 20, left: 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
                              padding: EdgeInsets.only(bottom: 20, left: 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
                              padding: EdgeInsets.only(bottom: 20, left: 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
    );
  }

  Container BasicDescription(Character character) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character.bestAlias ?? '',
            style: const TextStyle(
              color: Color.fromARGB(255, 252, 255, 85),
            ),
          ),
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
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 54, 85, 131),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RANK: ${character.rank}",
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
          ),
          const SizedBox(
            height: 40,
          ),
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
