import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:useless_trivia/repository/retrofit/wikipedia_client.dart';

import '../model/trivia.dart';
import '../repository/database/trivia_repository.dart';

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({super.key});

  @override
  State<SampleAppPage> createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List<Widget> widgets = [];
  DatabaseRepository db = DatabaseRepository();
  late List<Trivia> currentItems;

  get developer => null;

  @override
  void initState()  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opgeslagen jaren'),
      ),
      body:
          FutureBuilder(
              future: db.getAll(),
              builder: ((context, snapshot) {
              List<Trivia>? result = snapshot.data!;
              currentItems = result;
              return ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (context, position) {
                  return getRow(position, result[position].year.toString(), result[position].description);
              });
          })),
    );
  }


  showAlertDialog(BuildContext context, int year, String message) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(year.toString()),
      actions: [okButton],
      content: Html(data: message),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Future<void> getExtraData(int year) async {
    final WikipediaClient client = WikipediaClient(
      Dio(
        BaseOptions(contentType: "application/json"),
      ),
    );
    Future<WikipediaMobileSectionResponse> res = client.getMobileSectionLead(year: year);
    WikipediaMobileSectionResponse f = await res;
    print(f.sections[0].text);
    if (f.sections[0].text != null) {
      showAlertDialog(context, year, f.sections[0].text!);
    }
  }

  Widget getRow(int i, String title, String description) {
    return GestureDetector(
      onTap: () {
        setState(()  {
          getExtraData(currentItems[i].year);
          // widgets.add(getRow(widgets.length));
          // developer.log('row $i');

        });
      },
      child: Card(
        margin: EdgeInsets.all(5.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.grey.withOpacity(0.25),
        child: ListTile(
          title: Text(title),
          subtitle: Text(description),
        ),
        // Divider(),
      ),
    );
  }
}
