// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedAnswer;
  final String answerText;
  Answer(this.selectedAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlueAccent[400],
        child: Text(answerText),
        onPressed: null,
      ),
    );
  }
}
