import 'package:assignment1/wordbox.dart';
import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
import './generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String word = "";

  void generate() {
    setState(() {
      word = generateNoun().take(1).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF242940),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "Words Generator",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFF2E415A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              WordBox(word),
              SizedBox(
                height: 30,
              ),
              Generator(generate),
              SizedBox(
                height: 190,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Develped by Abdulaziz ",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
