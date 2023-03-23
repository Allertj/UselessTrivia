import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request/request_event.dart';
import 'package:useless_trivia/application/request/request_state.dart';
import 'package:useless_trivia/domain/wikipedia/i_wikipedia_repository.dart';
import 'package:useless_trivia/util/util.dart';

import '../../../application/database/database_state.dart';
import '../../../application/database/database_watcher.dart';
import '../../../application/request/request_watcher.dart';
import '../../../injection.dart';
import '../../routes/router.dart';

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
            if (state is IsLoading) {
              return Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text(textAlign: TextAlign.center, "LADEN")
                  ]));

            } else if (state is IsEmpty) {
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
                        textAlign: TextAlign.center,
                        "Geen Artikelen beschikbaar")
                  ]));

            } else {
              final current = state as HasEntries;
              return ListView.builder(
                  itemCount: current.entries.length,
                  itemBuilder: (context, position) {
                    String title =
                        current.entries[position].searchTerm.toString();
                    return Card(
                        margin: const EdgeInsets.all(5.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Colors.grey.withOpacity(0.25),
                        child: BlocListener<RequestWatcher, RequestState>(
                          listenWhen: (previousState, currentState) {
                            if (previousState is InProgress) {
                              // Navigator.pop(context);
                              // Navigator.of(context).pop();
                              Navigator.of(context, rootNavigator: true).pop();
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
                            } else if (state is HasSuccessfullyDownloaded) {
                              AlertDialogUtil.showAlertDialog(
                                  context,
                                  state.result.searchTerm,
                                  state.result.description,
                                  true);
                            } else if (state is HasFailed) {
                              AlertDialogUtil.showAlertDialog(context, "failed",
                                  state.failureMessage, false);
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
                            subtitle:
                                Text(current.entries[position].description),
                            onTap: () async {
                              requestBloc.add(RequestLead(title));
                            },
                          ),
                        ));
                  });
            }
          },
        ));
  }
}
