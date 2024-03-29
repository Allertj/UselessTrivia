import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/database/database_event.dart';
import 'package:useless_trivia/application/database/database_bloc.dart';
import 'package:useless_trivia/application/request/request_bloc.dart';
import 'package:useless_trivia/injection.dart';
import 'package:useless_trivia/presentation/pages/request_page/saved_articles_holder.dart';
import 'package:useless_trivia/presentation/routes/router.gr.dart';
import '../../../application/form/textfield_bloc.dart';
import '../../routes/router.dart';
import 'request_article_form.dart';

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
                Icons.place,
                color: Colors.white,
              ),
              onPressed: () {
                router.push(const MapRoute());
              }),
        ]),
        body: Center(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<DatabaseBloc>()..add(const DatabaseEvent.askForCurrentEntries()),
              ),
              BlocProvider(
                create: (context) => getIt<RequestBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<TextFieldBloc>(),
              ),
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RequestArticleForm(),
                Expanded(child: SavedArticlesHolder())
              ],
            ),
          ),
        ));
  }
}
