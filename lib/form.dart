import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:useless_trivia/repository/database/trivia_repository.dart';
import 'package:useless_trivia/repository/retrofit/wikipedia_client.dart';
import 'package:uuid/uuid.dart';

import 'model/trivia.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Future<void> _getYear(String year) async {
    final WikipediaClient client = WikipediaClient(
      Dio(
        BaseOptions(contentType: "application/json"),
      ),
    );

    if (int.tryParse(year) != null) {
      Future<WikipediaResponse> result = client.getTrivia(year: int.parse(year));
      WikipediaResponse finalresult = await result;

      // print(tt.extract);
      DatabaseRepository db = DatabaseRepository();
      // if (finalresult.extract != null) {
      final Trivia trivia = Trivia(id: const Uuid().v4(),
          year: int.parse(year),
          description: finalresult.extract);
      print(trivia);
      db.insert(trivia);
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(child: buildTextField()),
        ElevatedButton(
          onPressed: () => _getYear(myController.value.text),
          child: const Text('Zoek'),
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

