import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:useless_trivia/application/request_watcher.dart';
import '../../../application/request_event.dart';
import '../../../injection.dart';

class YearForm extends StatefulWidget {
  const YearForm({super.key});

  @override
  State<YearForm> createState() => _YearFormState();
}

class _YearFormState extends State<YearForm> {
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
    final RequestBloc requestBloc = getIt<RequestBloc>();
    String searchTerm;

    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(child: buildTextField()),
        ElevatedButton(
          child: const Text('Zoek'),
          onPressed: () async => {
            searchTerm = myController.value.text.toString(),
            requestBloc.add(RequestStringTerm(searchTerm)),
          },
        )
      ]),
    ]);
  }


}

