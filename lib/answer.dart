import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answer;

  static ButtonStyle style = ElevatedButton.styleFrom(
    primary: Colors.orange,
    onPrimary: Colors.yellow,
    textStyle: TextStyle(color: Colors.white),
  );

  Answer(this.onPressed, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: ElevatedButton(
          style: style, onPressed: onPressed, child: Text(answer)),
    );
  }
}
