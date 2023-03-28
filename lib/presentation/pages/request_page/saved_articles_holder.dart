import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request/request_event.dart';
import 'package:useless_trivia/application/request/request_state.dart';
import 'package:useless_trivia/util/util.dart';

import '../../../application/database/database_state.dart';
import '../../../application/database/database_watcher.dart';
import '../../../application/request/request_watcher.dart';
import '../../../infrastructure/database/database.dart';
import '../../../injection.dart';
import '../../routes/router.dart';
import '../../routes/router.gr.dart';

class SavedArticlesHolder extends StatelessWidget {
  SavedArticlesHolder({super.key});

  final RequestWatcher requestBloc = getIt<RequestWatcher>();
  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen artikelen'),
        ),
        body: BlocBuilder<DatabaseWatcher, DatabaseState>(
            builder: (context, state) {
          return state.when(isLoading: () {
            return Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text(textAlign: TextAlign.center, "LADEN")
                ]));

          }, isEmpty: () {
            return Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                  Icon(
                    Icons.block,
                    color: Colors.red,
                    size: 100.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(height: 20),
                  Text(
                      textAlign: TextAlign.center, "Geen Artikelen beschikbaar")
                ]));

          }, hasEntries: (List<Trivia> trivia) {
            return AutomaticAnimatedList<Trivia>(
                items: trivia,
                insertDuration: Duration(milliseconds: 500),
                removeDuration: Duration(milliseconds: 500),
                keyingFunction: (Trivia item) => Key(item.id),
                itemBuilder: (BuildContext context, Trivia item,
                    Animation<double> animation) {
                  String title = item.searchTerm.toString();
                  return FadeTransition(
                      key: Key(item.id),
                      opacity: animation,
                      child: SizeTransition(
                          sizeFactor: CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeOut,
                            reverseCurve: Curves.easeIn,
                          ),
                          child: Card(
                              margin: const EdgeInsets.all(5.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.grey.withOpacity(0.25),
                              child: BlocListener<RequestWatcher, RequestState>(
                                listenWhen: (previousState, currentState) {
                                  if (previousState is InProgress) {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                  }
                                  return true;
                                },
                                listener: (context, state) {
                                  if (state is InProgress) {
                                    showDialog(
                                      barrierDismissible: true,
                                      builder: (ctx) {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        );
                                      },
                                      context: context,
                                    );
                                  } else if (state
                                      is HasSuccessfullyDownloaded) {
                                    router.push(ReadRoute(
                                      title: state.result.searchTerm,
                                      htmlString: state.result.description,
                                    ));
                                  } else if (state is HasFailed) {
                                    AlertDialogUtil.showAlertDialog(context,
                                        "failed", state.failureMessage, false);
                                  }
                                },
                                child: ListTile(
                                  leading: IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {
                                      requestBloc.add(RequestDeletion(title));
                                    },
                                  ),
                                  title: Text(title),
                                  subtitle: Text(item.description),
                                  onTap: () async {
                                    requestBloc.add(RequestLead(title));
                                  },
                                ),
                              ))));
                });
          });
        }));
  }
}
