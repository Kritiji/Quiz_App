import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   String questionText;

   Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}