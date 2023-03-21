import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request_watcher.dart';
import 'package:useless_trivia/presentation/request_bloc.dart';

import '../application/request_event.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget buildTextField() {
    const maxLines = 1;

    return Container(
      margin: const EdgeInsets.all(12),
      height: maxLines * 50.0,
      child: TextField(
        maxLines: maxLines,
        controller: myController,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
            filled: true, hintText: 'Voer een jaartal in.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TriviaBloc triviaBloc = BlocProvider.of<TriviaBloc>(context);
    final RequestBloc requestBloc = BlocProvider.of<RequestBloc>(context);
    String searchTerm;

    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(child: buildTextField()),
        ElevatedButton(
          child: const Text('Zoek'),
          onPressed: () async => {
            searchTerm = myController.value.text.toString(),
            // triviaBloc.add(RequestStringTerm(searchTerm))
            requestBloc.add(RequestStringTerm1(searchTerm)),
          },
        )
      ]),
    ]);
  }


}

