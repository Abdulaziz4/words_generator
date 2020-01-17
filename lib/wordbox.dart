import 'package:flutter/material.dart';

class WordBox extends StatelessWidget {
  final String word;
  WordBox(this.word);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 140),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(color: Colors.orange, spreadRadius: 3, blurRadius: 2)
          ]),
      child: Text(
        word,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
