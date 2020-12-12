import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22,color: Color.fromRGBO(255, 255, 255, 1.0)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
