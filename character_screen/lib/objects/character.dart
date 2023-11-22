class Character {
  final String name;
  final String descriptionShort;
  final String? descriptionLong;
  final String imagePath;
  final String? bestAlias;
  final int rank;


  const Character({
    required this.name,
    required this.descriptionShort,
    this.descriptionLong,
    required this.imagePath,
    this.bestAlias,
    int? rank,
  }) : rank = rank ?? 0;
}