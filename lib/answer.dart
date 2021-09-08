import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerResult;
  final String answerText;
  Answer(this.answerResult, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),
        onPressed: answerResult,
        child: Text(answerText, style: TextStyle(
          fontSize: 25,
        ),),
      ),
    );
  }
}
