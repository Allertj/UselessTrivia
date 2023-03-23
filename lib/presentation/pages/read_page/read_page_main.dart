import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class ReadPage extends StatelessWidget {
  const ReadPage({super.key, required this.htmlString});

  final String htmlString;
  // final RequestWatcher requestBloc = getIt<RequestWatcher>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Opgeslagen artikelen'),
        ),
        body: Html(data: htmlString));
  }
}
