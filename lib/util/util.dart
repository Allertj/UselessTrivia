import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class AlertDialogUtil {
  static showAlertDialog(
      BuildContext context, String title, String message, bool html) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    );

    AlertDialog alert = AlertDialog(
        scrollable: true,
        title: Text(title),
        actions: [okButton],
        content: html ? HtmlWidget(message) : Text(message));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
