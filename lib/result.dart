import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // final int resultScore;
  Result();

  String get resultPhrase {
    String resultText = 'resultScore';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
