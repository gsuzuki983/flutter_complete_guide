import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 90},
        {'text': 'White', 'score': 100},
        {'text': 'Blue', 'score': 90},
        {'text': 'Yellow', 'score': 100}
      ]
    },
    {
      'questionText': 'What\'s your favorite foods?',
      'answers': [
        {'text': 'Biriyani', 'score': 100},
        {'text': 'Roti', 'score': 90},
        {'text': 'Ramen', 'score': 100},
        {'text': 'Osirikoo', 'score': 90}
      ]
    },
    {
      'questionText': 'What\'s your favorite anime?',
      'answers': [
        {'text': 'Naruto', 'score': 100},
        {'text': 'One Piece', 'score': 90},
        {'text': 'My hero academea', 'score': 70},
        {'text': 'Hippo no makanauchi', 'score': 50}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
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
            : Result(_totalScore),
      ),
    );
  }
}
