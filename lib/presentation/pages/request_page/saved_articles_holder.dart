import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request/request_event.dart';
import 'package:useless_trivia/application/request/request_state.dart';
import 'package:useless_trivia/presentation/pages/request_page/saved_articles_item.dart';
import 'package:useless_trivia/util/util.dart';

import '../../../application/database/database_state.dart';
import '../../../application/database/database_bloc.dart';
import '../../../application/request/request_bloc.dart';
import '../../../infrastructure/database/database.dart';
import '../../../injection.dart';
import '../../routes/router.dart';
import '../../routes/router.gr.dart';

class SavedArticlesHolder extends StatelessWidget {
  SavedArticlesHolder({super.key});

  final RequestBloc requestBloc = getIt<RequestBloc>();
  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen artikelen'),
        ),
        body: BlocBuilder<DatabaseBloc, DatabaseState>(
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
                insertDuration: const Duration(milliseconds: 500),
                removeDuration: const Duration(milliseconds: 500),
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
                          child: SavedArticlesItem(title: title, description: item.description)));
                });
          });
        }));
  }
}
