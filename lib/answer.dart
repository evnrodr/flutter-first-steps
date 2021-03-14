import 'package:flutter/material.dart';

class Answser extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answser(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.all(6),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
