import 'package:flutter/material.dart';

// ignore: camel_case_types
class dialogs {
  // nofition
  static showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.red[400],
      ),
    );
  }

}
