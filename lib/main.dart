import 'package:flutter/material.dart';
import 'package:quiz_app_practice/appbartext.dart';
import 'package:quiz_app_practice/quiz.dart';
import 'package:quiz_app_practice/result.dart';

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
      'questionText': 'Who is is your favourite Batsman ?',
      'answers': [
        {'text': 'Babar Azam', 'score': 10},
        {'text': 'Virat Kohli', 'score': 20},
        {'text': 'Hashim Amla', 'score': 30},
        {'text': 'Steven Smith', 'score': 40}
      ]
    },
    {
      'questionText': 'Who is your favourite Bowler ?',
      'answers': [
        {'text': 'Anil Kumble', 'score': 20},
        {'text': 'Wasim Akram', 'score': 10},
        {'text': 'Glenn McGrath', 'score': 40},
        {'text': 'Dale Steyn', 'score': 30},
      ]
    },
    {
      'questionText': 'Who is your favourite Fielder ?',
      'answers': [
        {'text': 'Jonty Rhodes', 'score': 30},
        {'text': 'Ravindra Jadeja', 'score': 20},
        {'text': 'Shadab Khan', 'score': 10},
        {'text': 'Rickey Ponting', 'score': 40}
      ]
    },
    {
      'questionText': 'Who is your favourite Wicket Keeper ?',
      'answers': [
        {'text': 'Adam GilChrist', 'score': 40},
        {'text': 'MS Dhoni', 'score': 20},
        {'text': 'Mark Boucher', 'score': 30},
        {'text': 'Moin Khan', 'score': 10},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have questions!');
    } else {
      print('No more Questions');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 40,
          backgroundColor: Colors.black,
          title: AppBarText(),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(resetQuiz, _totalScore),
      ),
    );
  }
}
