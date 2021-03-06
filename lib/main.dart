import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home.dart';
import 'cart.dart';
import 'help.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _page = 0;

  final MainHome _homemain = new MainHome();
  final MainCart _cartmain = new MainCart(); 
  final MainHelp _helpmain = new MainHelp(); 
  final MainMenu _menumain = new MainMenu(); 

  Widget _showpage = new MainHome();

  Widget _pagechooser(int vpage)
  {
    switch(vpage)
    {
      // case 0: return _cartmain;
      case 1: return _cartmain;
      case 2: return _homemain;   
      case 3: return _helpmain;   
      case 4: return _menumain;
    }
    return Container(child: Text("can't exis"),);
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "hello",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
          height: 45.0,
          items: <Widget>[
            Icon(Icons.search, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.help, size: 30),
            Icon(Icons.menu, size: 30),
          ],          
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              // _page = index;
              _showpage=_pagechooser(index);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: _showpage,
            // child: Text(_page.toString(), textScaleFactor: 10.0, style: TextStyle(color: Colors.white),),                     
        ));
  }
}
