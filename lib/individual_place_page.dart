import 'package:flutter/material.dart';

class IndivualPage extends StatefulWidget {
   final String textt;  
   static const String id = 'individual_screen';
  // IndivualPage({Key key, @required this.textt}) : super(key: key);
  IndivualPage({Key key, this.textt}) : super(key: key);

  @override
  _IndivualPageState createState() => _IndivualPageState();
}

class _IndivualPageState extends State<IndivualPage> {  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(widget.textt),
    );
  }
}