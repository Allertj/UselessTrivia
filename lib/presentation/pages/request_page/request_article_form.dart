import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_trivia/application/request/request_bloc.dart';
import '../../../application/form/textfield_bloc.dart';
import '../../../application/request/request_event.dart';
import '../../../application/request/request_state.dart';
import '../../../injection.dart';
import '../../../util/util.dart';

class RequestArticleForm extends StatelessWidget {
  RequestArticleForm({super.key});
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final RequestBloc requestBloc = getIt<RequestBloc>();
    final TextFieldBloc textFieldBloc = getIt<TextFieldBloc>();
    const maxLines = 1;

    return BlocConsumer<RequestBloc, RequestState>(listener: (context, state) {
      if (state is HasFailed) {
        AlertDialogUtil.showAlertDialog(
            context, "Fout", state.failureMessage, false);
      }
    }, builder: (context, state) {
      return Column(children: <Widget>[
        BlocBuilder<TextFieldBloc, TextFieldState>(builder: (context, state) {
          return Row(children: <Widget>[
            Expanded(child: Container(
              margin: const EdgeInsets.all(12),
              height: maxLines * 50.0,
              child: TextField(
                onChanged: (String newEntry) {
                    textFieldBloc.add(TextFieldEvent.entryChanged(newEntry));
                },
                maxLines: maxLines,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    filled: true, hintText: 'Voer een zoekterm in.'),
              ),
            )),
            ElevatedButton(
              child: const Text('Zoek'),
              onPressed: () async => {
                FocusScope.of(context).requestFocus(FocusNode()),
                requestBloc.add(RequestSummary(state.currentEntry)),
              },
            )
          ]);
        }),
      ]);
      // }
    });
  }
}
