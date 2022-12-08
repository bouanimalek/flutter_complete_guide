import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // we add final because it's a statless widget
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
