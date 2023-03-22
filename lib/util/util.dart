import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:flutter_html/flutter_html.dart';

class AlertDialogUtil {
  static showAlertDialog(BuildContext context, int year, String message, bool html) {
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
      content: html ? HtmlWidget(message) : Text(message)
      // content: Text(message),
      // content: Html(data: message),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}