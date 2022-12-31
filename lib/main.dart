import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = {
    {
      'questionText': 'What\'s the favorite color?',
      'answer': [
        'Red',
        'Green',
        'Blue',
        'Black',
      ],
    },
    {
      'questionText': 'What\'s the favorite animal?',
      'answer': [
        'Rabbit',
        'Lion',
        'Cat',
        'Dog',
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        'Max',
        'Max',
        'Max',
        'Max',
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
