import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Character {
  final String name;
  final String descriptionShort;
  final String? descriptionLong;
  final List<String> mainImagePaths;
  final String? bestAlias;
  final int favs;
  final String rank;


  Character({
    required this.name,
    required this.descriptionShort,
    this.descriptionLong,
    required this.mainImagePaths,
    this.bestAlias,
    int? favs_,
    int? rank_,
  }) : favs = favs_ ?? 0, rank = rank_?.toString() ?? "Unranked";

  Character.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        descriptionShort = json["descriptionShort"],
        descriptionLong = json["descriptionLong"],
        mainImagePaths = (json["mainImagePaths"] as List<dynamic>?)
            ?.map<String>((item) => item["imagePath"] as String)
            .toList() ?? <String>[],
        bestAlias = json["bestAlias"],
        favs = json["favs"] ?? 0,
        rank = json["rank"] ?? "Unranked";
}

Future<List<Character>> loadCharacters() async{
  final jsonString = await rootBundle.loadString('assets/characters.json');
  final jsonData = jsonDecode(jsonString);

  final jsonCharactersList =jsonData['characters'];

  List<Character> characters = [];
  for (final jsonCharacter in jsonCharactersList) {
    characters.add(Character.fromJson(jsonCharacter));
  }
  return characters;
}