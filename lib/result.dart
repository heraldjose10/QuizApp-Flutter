import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function restartHandler;

  Result({this.finalScore, this.restartHandler});
  String get resultPhrase {
    String returnPhrase;
    if (finalScore > 10) {
      returnPhrase = 'You are Perfect!';
    } else if (finalScore < 10 && finalScore > 5) {
      returnPhrase = 'You did well.';
    } else {
      returnPhrase = 'You are pathetic';
    }
    return returnPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartHandler,
            child: Text(
              'Try Again',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
