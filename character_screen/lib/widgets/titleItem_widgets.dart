import 'package:flutter/material.dart';
import 'package:character_screen/objects/character.dart';

class TitlesScrollableHorizontalDisplay extends StatelessWidget {
  const TitlesScrollableHorizontalDisplay({
    super.key,
    required this.titles,
  });

  final List<TitleItem> titles;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (TitleItem title in titles)
            TitleItemDisplay(
              title: title,
            ),
        ],
      ),
    );
  }
}

class TitleItemDisplay extends StatelessWidget {
  const TitleItemDisplay({
    super.key,
    required this.title,
  });

  final TitleItem title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(title.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            margin: const EdgeInsets.all(8.0),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 54, 85, 131),
              ),
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  title.title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 174, 184, 197),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
