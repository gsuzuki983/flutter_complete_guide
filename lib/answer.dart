import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, //ボタンの背景色
        ),
      ),
    );
  }
}
