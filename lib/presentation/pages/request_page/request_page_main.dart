import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/database_event.dart';
import 'package:useless_trivia/application/database_watcher.dart';
import 'package:useless_trivia/application/request_watcher.dart';
import 'package:useless_trivia/injection.dart';
import 'package:useless_trivia/presentation/pages/request_page/year_holder.dart';
import 'package:useless_trivia/presentation/routes/router.gr.dart';
import '../../routes/router.dart';
import 'year_form.dart';

@RoutePage()
class RequestPage extends StatelessWidget {
  RequestPage({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("UselessTrivia"), actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                  router.push(AlternativeMapRoute());
                // );
              })
        ]),
        body: Center(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<DatabaseWatcher>()..add(AskForCurrentEntries()),
              ),
              BlocProvider(
                create: (context) => getIt<RequestWatcher>(),
              ),
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[YearForm(), Expanded(child: SavedYearsHolder())],
            ),
          ),
        ));
  }
}
