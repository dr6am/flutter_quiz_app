import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  int idx;
  var data;
  Function answerHandler;

  Quiz(this.idx, this.data, this.answerHandler);

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(data[idx]["text"]),
        //_questions[_questionIndex]["answers"]
        ...(data[idx]['answers'] as List<Map<String, Object>>)
            .map((e) => Answer(e["text"], () {
                  answerHandler(e["score"]);
                }))
            .toList(),
      ],
    );
  }
}
