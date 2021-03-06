import 'dart:ui';

import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child:  Container(
      child: Column(
        children: [
          // Text("what would you like to book today???",style: TextStyle(color: Colors.white,fontSize: 20),),
          CategoryBannerArea(),
        ],
      ),
    ),
    );
  }
}

var bannerImage=["img0","img1"];

class CategoryBannerArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;

    PageController controller =PageController(initialPage: 1,viewportFraction: 0.8,);

    List<dynamic> banner=new List();
    for(int i=0;i<bannerImage.length;i++)
    {
      var bannerView = Container(
        child: Stack(
          fit: StackFit.expand,
          children: [Image.asset(bannerImage[i],fit: BoxFit.cover)],
        ),
      );
      banner.add(bannerView);
    }
    return Container(
      width:screenWidth,
      height: screenWidth * 9/16,
      child: PageView(
        controller:controller ,
        scrollDirection: Axis.horizontal,
        children: banner,
      ),
    );
  }
}