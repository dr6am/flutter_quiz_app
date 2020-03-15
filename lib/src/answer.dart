import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String text;

  Answer(this.text, this.answerHandler);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(child: Text(text), onPressed: answerHandler),
    );
  }
}
