import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontStyle: FontStyle.italic,
        fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
