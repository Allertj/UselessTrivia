import 'package:drift/drift.dart';

@DataClassName("Trivia")
class TriviaClass extends Table {
  @JsonKey("Id")
  TextColumn get id => text()();
  @JsonKey("SearchTerm")
  TextColumn get searchTerm => text()();
  @JsonKey("Description")
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id};
}