import 'package:flutter/material.dart';

class MainHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blueAccent,
      child: Text("this is help"),
    );
  }
}