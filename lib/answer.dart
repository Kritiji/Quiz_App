// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   Function selectHandler;
   String answerText;

   Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.redAccent[700],
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: () => selectHandler (),
      ), //RaisedButton
    ); //Container
  }
}