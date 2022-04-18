import 'package:flutter/material.dart';
import 'question.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback clearResultHandler;

  Result(this.totalScore, this.clearResultHandler);

  String get resultPhrase {
    var text = "";
    if (totalScore <= 20) {
      text += "You are likable";
    } else if (totalScore <= 60) {
      text += "You are Ok";
    } else {
      text += "You are awesome!";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Question(questionText: "Total Score = " + totalScore.toString() + "\n"),
        Center(child: Text(resultPhrase)),
        ElevatedButton(onPressed: clearResultHandler, child: Text("Restart!"))
      ]),
    );
  }
}
