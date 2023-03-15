
class Trivia {
  final String id;
  final int year;
  final String description;

  const Trivia({
    required this.id,
    required this.year,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return { "id": id, "year": year, "description": description};
  }

  static Trivia fromMap(Map<String, dynamic> triviaAsMap) {
    return Trivia(id: triviaAsMap["id"], year: triviaAsMap["year"], description: triviaAsMap["description"], );
  }
}