import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

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
      'questionText': 'What\s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 6},
        {'text': 'White', 'score': 4}
      ],
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 8},
        {'text': 'Cat', 'score': 6},
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Birds', 'score': 10}
      ],
    },
    {
      'questionText': 'What\s your favorite food?',
      'answers': [
        {'text': 'Fries', 'score': 10},
        {'text': 'Pizza', 'score': 8},
        {'text': 'Pasta', 'score': 6},
        {'text': 'Cake', 'score': 4}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
