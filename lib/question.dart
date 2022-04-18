import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
