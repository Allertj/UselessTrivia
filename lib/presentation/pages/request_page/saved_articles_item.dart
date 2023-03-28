import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/request/request_bloc.dart';
import '../../../application/request/request_event.dart';
import '../../../application/request/request_state.dart';
import '../../../injection.dart';
import '../../../util/util.dart';
import '../../routes/router.dart';
import '../../routes/router.gr.dart';

class SavedArticlesItem extends StatelessWidget {
  final String title;
  final String description;

  SavedArticlesItem({super.key, required this.title, required this.description});

  final RequestBloc requestBloc = getIt<RequestBloc>();
  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.grey.withOpacity(0.25),
        child: BlocListener<RequestBloc, RequestState>(
          listenWhen: (previousState, currentState) {
            if (previousState is InProgress) {
              Navigator.of(context, rootNavigator: true).pop();
            }
            return true;
          },
          listener: (context, state) {
            if (state is InProgress) {
              showDialog(
                barrierDismissible: true,
                builder: (ctx) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  );
                },
                context: context,
              );
            } else if (state is HasSuccessfullyDownloaded) {
              router.push(ReadRoute(
                title: state.result.searchTerm,
                htmlString: state.result.description,
              ));
            } else if (state is HasFailed) {
              Navigator.of(context, rootNavigator: true).pop();
              AlertDialogUtil.showAlertDialog(
                  context, "Fout", state.failureMessage, false);
            }
          },
          child: ListTile(
            leading: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                requestBloc.add(RequestDeletion(title));
              },
            ),
            title: Text(title),
            subtitle: Text(description),
            onTap: () async {
              requestBloc.add(RequestLead(title));
            },
          ),
        ));
  }
}
