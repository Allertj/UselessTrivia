import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/ui/streepmap/streetmap.dart';
import 'package:useless_trivia/ui/year_recylcerview.dart';
import 'mycustomform.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StreetMap()),
              );
              // do something
            })
      ]),
      body: Center(
        child:
        BlocProvider(
          create: (context) => TriviaBloc(),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyCustomForm(),
            Expanded(child: YearHolder())
          ],
        ),
      ),
    ));
  }
}
