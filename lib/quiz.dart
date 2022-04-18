import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) onPressed;

  Quiz(this.questions, this.questionIndex, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(questionText: questions[questionIndex]["question"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => onPressed(answer["score"] as int),
              answer["text"] as String);
        })
      ],
    ));
  }
}
