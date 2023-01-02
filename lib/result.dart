import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 100) {
      resultText = "Good: ";
    } else if (resultScore > 100 && resultScore <= 150) {
      resultText = "Awesome: ";
    } else {
      resultText = "Funtastic: ";
    }
    resultText += resultScore.toString();
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text(
              'restarting Quiz!',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
