class Character {
  final String name;
  final String descriptionShort;
  final String? descriptionLong;
  final String imagePath;
  final String? bestAlias;
  final int favs;


  const Character({
    required this.name,
    required this.descriptionShort,
    this.descriptionLong,
    required this.imagePath,
    this.bestAlias,
    int? rank,
  }) : favs = rank ?? 0;
}

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
