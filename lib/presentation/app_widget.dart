import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:useless_trivia/presentation/routes/router.dart';
import '../injection.dart';
import 'pages/request_page/request_page_main.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: _appRouter.config(),
        title: 'TriviaApp',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
    );
  }
}

