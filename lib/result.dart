import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resetHandler, this.resultScore);

  String get resultPhrase {
    // var resultText = 'You did it!';
    var resultText;
    if (resultScore == 40) {
      resultText = 'You are a Pakistani fan 🇵🇰';
    } else if (resultScore == 80) {
      resultText = 'You are an Indian fan 🇮🇳';
    } else if (resultScore == 120) {
      resultText = 'You are a South African fan 🇿🇦';
    } else if (resultScore == 160) {
      resultText = 'You are an Australian fan 🇦🇺 ';
    } else{
      resultText = 'You love all the teams 👍';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 90),
        child: Column(
      children: [
        Center(
          child: Text(

            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            primary: Colors.blue[500],
          ),
          onPressed: resetHandler,
          child: Text('Restart', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
        ),
      ],
    ));
  }
}
