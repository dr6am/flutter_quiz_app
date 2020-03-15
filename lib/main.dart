import 'package:flutter/material.dart';
import 'package:quizapp/src/quiz.dart';

import './src/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
// This widget is the root of your application.
  int _questionIndex = 0;
  int total = 0;
  var questions = const [
    {
      "text": 'What\'s your favourite color?',
      "answers": [
        {"text": "green", "score": 10},
        {"text": "red", "score": 2},
        {"text": "blue", "score": 5}
      ]
    },
    {
      "text": 'what\'s your favourite animal?',
      "answers": [
        {"text": "cat", "score": 10},
        {"text": "snake", "score": 2},
        {"text": "dog", "score": 5}
      ]
    },
  ];

  // ignore: missing_return
  Function answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      total += score;
    });
    print("index: $_questionIndex");
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(_questionIndex, questions, answerQuestion)
            : Result(total, resetQuiz),
        bottomNavigationBar: BottomAppBar(
          elevation: 1,
        ),
      ),
    );
  }
}
