import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/domain/i_wikipedia_client.dart';
import 'package:useless_trivia/repository/database/database.dart';


abstract class TriviaEvent {}

class RequestStringTerm extends TriviaEvent  {
  final String searchTerm;
  RequestStringTerm(this.searchTerm);
}

@injectable
class TriviaBloc extends Bloc<TriviaEvent, List<Trivia>> {
  final IWikipediaRepository _wc;
  final MyDatabase database;

  TriviaBloc(this._wc, this.database) : super([]) {
    on<RequestStringTerm>((event, emit) async {
      final received = await _wc.getTriviaByString(event.searchTerm);
      received.fold(
              (failure) => print("failure"),
              (trivia) async =>

                  database.triviaDao.insertTrivia(trivia),
      );
    });
  }

  @override
  void onChange(Change<List<Trivia>> change) {
    super.onChange(change);
  }
}
