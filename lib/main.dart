import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  dynamic _questions = {
    {
      'questionText': 'What\'s the favorite color?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 9},
        {'text': 'Blue', 'score': 8},
        {'text': 'Black', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s the favorite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 9},
        {'text': 'Cat', 'score': 8},
        {'text': 'Dog', 'score': 7},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 9},
        {'text': 'Max', 'score': 8},
        {'text': 'Max', 'score': 7},
      ],
    },
  };
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

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
              : Result(_totalScore)),
    );
  }
}
