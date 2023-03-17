
class Trivia {
  final String id;
  final String searchTerm;
  final String description;

  const Trivia({
    required this.id,
    required this.searchTerm,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return { "id": id, "searchTerm": searchTerm, "description": description};
  }

  static Trivia fromMap(Map<String, dynamic> triviaAsMap) {
    return Trivia(id: triviaAsMap["id"], searchTerm: triviaAsMap["searchTerm"], description: triviaAsMap["description"], );
  }
}