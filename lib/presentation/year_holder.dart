import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/database_state.dart';
import '../application/database_watcher.dart';

class YearHolder extends StatelessWidget {
  const YearHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen jaren'),
        ),
        body: BlocBuilder<DatabaseWatcher, DatabaseState>(
            builder: (context, state) {
              print(state);
                if(state is IsLoading) {
                  return const Text("Laden");
                } else if (state is IsEmpty) {
                  return const Text("Leeg");
                } else {
                  final current = state as HasEntries;
                  return ListView.builder(
                      itemCount: current.entries.length,
                      itemBuilder: (context, position) {
                        String title =
                        current.entries[position].searchTerm.toString();
                        return Card(
                          margin: const EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.grey.withOpacity(0.25),
                          child: ListTile(
                            title: Text(title),
                            subtitle: Text(
                                current.entries[position].description != null
                                    ? current.entries[position].description!
                                    : ""),
                            onTap: () async {},
                          ),
                        );
                      });
                }
              },
        )
    );
  }
}
