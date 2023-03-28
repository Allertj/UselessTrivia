import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request/request_watcher.dart';
import '../../../application/request/request_event.dart';
import '../../../application/request/request_state.dart';
import '../../../injection.dart';
import '../../../util/util.dart';

class RequestArticleForm extends StatefulWidget {
  const RequestArticleForm({super.key});

  @override
  State<RequestArticleForm> createState() => _RequestArticleFormState();
}

class _RequestArticleFormState extends State<RequestArticleForm> {
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
            filled: true, hintText: 'Voer een zoekterm in.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final RequestWatcher requestBloc = getIt<RequestWatcher>();
    String searchTerm;

    return BlocConsumer<RequestWatcher, RequestState>(
        listener: (context, state) {
          if (state is HasFailed) {
            AlertDialogUtil.showAlertDialog(
                context, "Fout", state.failureMessage, false);
          }
        },
        builder: (context, state) {
            return Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(child: buildTextField()),
                ElevatedButton(
                  child: const Text('Zoek'),
                  onPressed: () async =>
                  {
                    searchTerm = myController.value.text.toString(),
                    requestBloc.add(RequestSummary(searchTerm)),
                  },
                )
              ]),
            ]);
          // }
        });
  }
}
