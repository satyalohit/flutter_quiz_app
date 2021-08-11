import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultscore;
  Function reset;
  Result(this.resultscore, this.reset);

  String get resultphrase {
    String resulttext;
    if (resultscore < 8) {
      resulttext = "good";
    } else if (resultscore < 12) {
      resulttext = "great";
    } else if (resultscore < 14) {
      resulttext = "damn";
    } else if (resultscore > 14) {
      resulttext = "You are good";
    } else {
      resulttext = "its okay";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: reset,
            child: Text("restarting quiz",),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.green)),
          )
        ],
      ),
    );
  }
}
