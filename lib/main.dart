import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  var _questions = {
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
            ? Column(
                children: [
                  Question(
                    _questions
                        .elementAt(_questionIndex)['questionText']
                        .toString(),
                  ),
                  ...(_questions.elementAt(_questionIndex)['answer']
                          as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
