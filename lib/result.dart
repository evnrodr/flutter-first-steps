import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore == 0) {
      resultText = 'Você é da Terra mesmo? 🤔';
    } else if (resultScore == 25) {
      resultText = 'Isso mesmo! Nos vivemos na Terra! 🌍';
    } else if (resultScore == 75) {
      resultText = 'Astronomia é só amor! ✨';
    } else {
      resultText = 'It\'s not rocket science!\nCongrats!\n🚀';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
          )
        ],
      ),
    );
  }
}
