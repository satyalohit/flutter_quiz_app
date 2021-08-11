import 'package:firstapp/quiz.dart';
import 'package:firstapp/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myappstate();
  }
}

class _myappstate extends State<myapp> {
  var _questionindex = 0;
  var _totalscore=0;
  var questions = [
    {
      "question": "what is your favourite color?",
      "answer": [
        {"text": "blue", "score": 5},
        {"text": "black", "score": 10},
        {"text": "red", "score": 2},
        {"text": "green", "score": 4}
      ],
    },
    {
      "question": "who is your favourite hero?",
      "answer": [
        {"text": "aa", "score": 5},
        {"text": "ntr", "score": 10},
        {"text": "srk", "score": 2},
        {"text": "hrx", "score": 4}
        ],
    },
    {
      "question": "what is ypur favourite place?",
      "answer": [
        {"text": "vja", "score": 5},
        {"text": "hyd", "score": 10},
        {"text": "ap", "score": 2},
        {"text": "chennai", "score": 4}
        ],
    },
  ];

  void _answerquestion(int score) {

    _totalscore += score;
    setState(() {
      
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
    // if(_questionindex<questions.length){
    //   print('we have more questions');
    // }
  }
  void _resetquiz(){
    setState(() {
      _questionindex=0;
      _totalscore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "QuizApp",
              style: TextStyle(fontSize: 30),
            ),
          ),
          body: _questionindex < questions.length
              ? Quiz(
                  answerquestion: _answerquestion,
                  questionindex: _questionindex,
                  questions: questions)
              : Result(_totalscore,_resetquiz)),
    );
  }
}
