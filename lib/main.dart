import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  var _finalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s my age?',
      'answer': [
        {'text': '90', 'score': -1},
        {'text': '20', 'score': 3},
        {'text': 'How tf do I know', 'score': -1},
        {'text': '18', 'score': -1},
      ]
    },
    {
      'questionText': 'Who is the PM of India?',
      'answer': [
        {'text': 'Modi', 'score': 1},
        {'text': 'Herald', 'score': 3},
        {'text': 'me', 'score': -1},
        {'text': 'I dont know', 'score': -1},
      ]
    },
    {
      'questionText': 'Which is my favourite Month?',
      'answer': [
        {'text': 'Dec', 'score': 3},
        {'text': 'Feb', 'score': -1},
        {'text': 'Nov', 'score': -1},
        {'text': 'May', 'score': -1},
        {'text': 'March', 'score': -1},
        {'text': 'April', 'score': -1},
      ]
    },
    {
      'questionText': 'Will this be the last question?',
      'answer': [
        {'text': 'Maybe', 'score': -1},
        {'text': 'NO', 'score': -1},
        {'text': 'IDK', 'score': -1},
        {'text': 'Yes', 'score': 3},
      ]
    }
  ];

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _finalScore += score;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text(
            'Quizzer',
            style: TextStyle(
              color: Color.fromRGBO(240, 240, 240, 1.0),
            ),
          ),
          backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions)
            : Result(
                finalScore: _finalScore,
                restartHandler: _restartQuiz,
              ),
      ),
    );
  }
}
