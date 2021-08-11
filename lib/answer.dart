import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function statehandler;
  String options;
  Answer(this.statehandler, this.options);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
          onPressed: statehandler,
          child: Text(options)),
    );
  }
}
