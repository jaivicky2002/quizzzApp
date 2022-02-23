import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
final Function() selectans;
 final String answerText;

  Answers(this.selectans,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('answer'),
        onPressed:selectans,
      ),
    );
  }
}
