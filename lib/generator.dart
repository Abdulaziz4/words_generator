import 'package:flutter/material.dart';

class Generator extends StatelessWidget {
  final Function generate;
  Generator(this.generate);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 35,
      child: RaisedButton(
        elevation: 5,
        color: Color(0xFFE78330),
        child: Text("Generate"),
        onPressed: generate,
      ),
    );
  }
}
