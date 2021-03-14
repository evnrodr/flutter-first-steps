import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int totalScore;

  Score(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        'Pontos: $totalScore',
        style: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),
        textAlign: TextAlign.center,
      ),
    );
  }
}
