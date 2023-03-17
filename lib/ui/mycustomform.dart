
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/ui/year_recylcerview.dart';
import 'package:uuid/uuid.dart';

import '../model/trivia.dart';
import '../repository/database/trivia_repository.dart';
import '../repository/retrofit/responses.dart';
import '../repository/retrofit/wikipedia_client.dart';

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

  @override
  Widget build(BuildContext context) {
    final db = context.read<SQFLiteRepository>();
    final wc = context.read<WikipediaClient>();
    final TriviaBloc triviaBloc = BlocProvider.of<TriviaBloc>(context);
    Trivia trivia;
    WikipediaResponse received;
    String searchTerm;
    // String dd;
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(child: buildTextField()),
        ElevatedButton(
          child: const Text('Zoek'),
          onPressed: () async => {
            searchTerm = myController.value.text.toString(),
            received = await wc.getTriviaByString(searchTerm: myController.value.text),
            trivia = Trivia(id: "dfsdf", searchTerm: searchTerm, description: received.extract),
            db.insert(trivia),
            triviaBloc.add(NewEntryReceived(trivia))
          },
        )
      ]),
    ]);
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
}

