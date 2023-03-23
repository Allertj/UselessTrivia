import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

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
        // content: html ? Html(data: message) : Text(message)
        content: Text(message)
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
