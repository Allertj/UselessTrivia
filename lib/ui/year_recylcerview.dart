import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/repository/retrofit/wikipedia_client.dart';
import 'package:useless_trivia/util/util.dart';
import '../model/trivia.dart';

abstract class DatabaseEvent {}

class NewEntryReceived extends DatabaseEvent {
  final Trivia newTrivia;

  NewEntryReceived(this.newTrivia);
}

class AllEntriesReceived extends DatabaseEvent {
  final List<Trivia> currentTrivia;

  AllEntriesReceived(this.currentTrivia);
}

class TriviaBloc extends Bloc<DatabaseEvent, List<Trivia>> {
  TriviaBloc() : super([]) {
    on<NewEntryReceived>((event, emit) {
      emit([...state, event.newTrivia]);
    });

    on<AllEntriesReceived>((event, emit) {
      emit(state);
    });
  }

  @override
  void onChange(Change<List<Trivia>> change) {
    super.onChange(change);
  }
}

class YearHolder extends StatelessWidget {
  const YearHolder({super.key});

  @override
  Widget build(BuildContext context) {
    final wc = context.read<WikipediaClient>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen jaren'),
        ),
        body: BlocBuilder<TriviaBloc, List<Trivia>>(builder: (context, state) {
          return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, position) {
                String title = state[position].searchTerm.toString();
                return Card(
                  margin: const EdgeInsets.all(5.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.grey.withOpacity(0.25),
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(state[position].description),
                    onTap: () async {
                      var received = await wc.getMobileSectionLead(year: int.parse(title));
                      AlertDialogUtil.showAlertDialog(
                          context, int.parse(title), received.sections[0].text!);
                    },
                  ),
                );
              });
        }));
  }
}
