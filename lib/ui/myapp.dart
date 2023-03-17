import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/repository/database/trivia_repository.dart';
import '../repository/retrofit/wikipedia_client.dart';
import 'myhomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => SQFLiteRepository()),
          RepositoryProvider(create: (context) => WikipediaClient(Dio(
            BaseOptions(contentType: "application/json"),
          )))
        ],
        child: MyHomePage(),
      )
    );
  }
}