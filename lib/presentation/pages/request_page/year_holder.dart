import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/domain/i_wikipedia_client.dart';
import 'package:useless_trivia/util/util.dart';

import '../../../application/database_state.dart';
import '../../../application/database_watcher.dart';
import '../../../injection.dart';

class SavedYearsHolder extends StatelessWidget {
  SavedYearsHolder({super.key});

  final wikipediaClient = getIt<IWikipediaRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen artikelen'),
        ),
        body: BlocConsumer<DatabaseWatcher, DatabaseState>(
          listener: (context, state) {

          },
          builder: (context, state) {
            if (state is IsLoading) {
              return Container(
                  child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text(textAlign: TextAlign.center, "LADEN")
                  ])));
            } else if (state is IsEmpty) {
              return Container(
                  child: Center(
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
                  ])));
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
                      child: ListTile(
                        title: Text(title),
                        subtitle: Text(current.entries[position].description),
                        onTap: () async {
                          var result = await wikipediaClient
                              .getMobileSectionLeadByString(title);
                          result.fold(
                              (failure) async => {
                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                      AlertDialogUtil.showAlertDialog(
                                      context, title, failure.message, false);
                                    })
                                  },
                              (wholeArticle) => AlertDialogUtil.showAlertDialog(
                                  context,
                                  wholeArticle.searchTerm,
                                  wholeArticle.description,
                                  true));
                        },
                      ),
                    );
                  });
            }
          },
        ));
  }
}
