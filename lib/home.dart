import 'dart:ui';
import 'global_init.dart';
import 'individual_place_page.dart';

import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "what would you like to book today???",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(),            
            Categorypart(),
          ],
        ),
      ),
    );
  }
}


class Categorypart extends StatefulWidget {
  @override
  _CategorypartState createState() => _CategorypartState();
}

class _CategorypartState extends State<Categorypart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.25,
        margin: EdgeInsets.all(20),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 4,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'imgs/' + catlist[index],
                        // width: 110.0,
                        // height: 150.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 3.5,
                      child: Text(
                        "hello",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                onTap: () {
                  // String selectedCategory;
                  setState(() {
                    // selectedCategory=index.toString();
                  });
                  // Navigator.pushNamed(context,IndivualPage.id);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {return IndivualPage();}));
                }
              );
            },
            itemCount: catlist.length));
  }
}