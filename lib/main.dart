import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'score.dart';

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
      'questionText': 'Qual a idade da Terra?',
      'answers': [
        {'text': '2021 anos!', 'score': 0},
        {'text': '13.77 bilhões de anos!', 'score': 0},
        {'text': '6.24 milhões de anos!', 'score': 0},
        {'text': '4.54 bilhões de anos!', 'score': 25}
      ],
    },
    {
      'questionText': 'Qual a gravidade da Terra?',
      'answers': [
        {'text': '7.2 m/s²', 'score': 0},
        {'text': '2.2 m/s²', 'score': 0},
        {'text': '9.8 m/s²', 'score': 25},
        {'text': '-12.3 m/s²', 'score': 0}
      ],
    },
    {
      'questionText': 'Quem propôs as Leis do Movimento Planetário?',
      'answers': [
        {'text': 'Albert Einstein', 'score': 0},
        {'text': 'Eratostenes', 'score': 0},
        {'text': 'Johannes Kepler', 'score': 25},
        {'text': 'Isaac Newton', 'score': 0}
      ],
    },
    {
      'questionText': 'Em que ano a humanidade pôs os pés na Lua?',
      'answers': [
        {'text': '1978', 'score': 0},
        {'text': '1969', 'score': 25},
        {'text': '1994', 'score': 0},
        {'text': '1902', 'score': 0}
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
        backgroundColor: Color(0xffe9eff1),
        appBar: AppBar(
          title: Text("CosmoQuiz!"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        bottomNavigationBar: Score(_totalScore),
      ),
    );
  }
}
