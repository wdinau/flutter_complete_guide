import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      "question": "what's your fav animal?",
      "answers": [
        {"text": "Cat", "score": 10},
        {"text": "Dog", "score": 20},
        {"text": "Turtle", "score": 40},
      ]
    },
    {
      "question": "what's your fav color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "Purple", "score": 40},
        {"text": "Pink", "score": 60},
      ]
    },
    {
      "question": "who's your fav person?",
      "answers": [
        {"text": "Mark", "score": 10},
        {"text": "Jones", "score": 40},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _onPressed(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _onClearResult() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('App Bar Title')),
          body: _questionIndex < questions.length
              ? Quiz(questions, _questionIndex, _onPressed)
              : Result(_totalScore, _onClearResult)),
    );
  }
}
