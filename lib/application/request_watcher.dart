import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/application/request_event.dart';
import 'package:useless_trivia/application/request_state.dart';

import '../domain/i_wikipedia_client.dart';
import '../repository/database/database.dart';
import 'database_event.dart';
import 'database_watcher.dart';

@injectable
class RequestBloc extends Bloc<RequestEvent1, RequestState> {
  final IWikipediaRepository _wc;
  final MyDatabase database;
  final DatabaseWatcher watcher;

  RequestBloc(this._wc, this.database, this.watcher) : super(const RequestState.isIdle()) {
    on<RequestStringTerm1>((event, emit) async {
        emit(const RequestState.inProgress());
        final received = await _wc.getTriviaByString(event.searchTerm);
        received.fold(
                (failure) => emit(const RequestState.hasFailed()),
                (trivia) async => {
                  emit(RequestState.isSuccessful(trivia)),
                  watcher.add(Inserted(trivia))
                }
        );
    });
  }
}