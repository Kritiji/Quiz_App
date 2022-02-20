import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Who is the oldest VAMPIRE?',
      'answers': [
        {'text': 'Klaus', 'score': -2},
        {'text': 'Michael', 'score': -2},
        {'text': 'Silas', 'score': 10},
        {'text': 'Katerina', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. Who is the strongest WITCH?',
      'answers': [
        {'text': 'Bonnie', 'score': -2},
        {'text': 'Esther', 'score': -2},
        {'text': 'Sheila', 'score': -2},
        {
          'text':
          'Quetsiah', 'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. How to kill an ORIGINAL VAMPIRE?',
      'answers': [
        {'text': 'Wooden Stake', 'score': -2},
        {'text': 'Oak Stake', 'score': 10},
        {'text': 'Vervain', 'score': -2},
        {'text': 'Sun', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who is the youngest VAMPIRE HUNTER?',
      'answers': [
        {'text': 'Jeremy Gilbert', 'score': 10},
        {'text': 'Alaric Saltzman', 'score': -2},
        {'text': 'Matt Donovan', 'score': -2},
        {'text': 'Connor Jordan', 'score': -2},
      ],
    },
    {
      'questionText':
      'Q5. Klaus is the first ARTIFICIAL HYBRID?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
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
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
        title: const Text("VAMPIRE DIARIES",
        style: TextStyle(
       //fontFamily: 'Nosifer',
          fontSize: 38,
        fontStyle: FontStyle.italic,
        backgroundColor: Colors.redAccent,
        fontWeight: FontWeight.w700,
        color: Colors.black),
    ),),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}