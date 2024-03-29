import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class ReadPage extends StatelessWidget {
  const ReadPage({super.key, required this.title, required this.htmlString});

  final String title;
  final String htmlString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.popRoute();
                }),
            title: Text(title)),
        body: SingleChildScrollView(child: Html(data: htmlString,)));
  }
}
