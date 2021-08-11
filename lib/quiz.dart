import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final int questionindex;
  final Function answerquestion;
  Quiz(
    {@required this.questions,
    @required this.questionindex,
    @required this.answerquestion}
    );

  @override
  Widget build(BuildContext context) {
    return  Column(
                children: [
                  Question(questions[questionindex]["question"]),
                  ...(questions[questionindex]["answer"] as List<Map<String,Object>>)
                      .map((value) => Answer(()=> answerquestion(value["score"]), value["text"]))
                      .toList()
                ],
              );
  }
}