import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:demo_homepage/common/color_constants.dart';
import 'package:demo_homepage/common/constants.dart';
import 'package:demo_homepage/custom_widgets/filter_widget.dart';
import 'package:demo_homepage/custom_widgets/floating_widget.dart';
import 'package:demo_homepage/custom_widgets/image_widget.dart';

import 'package:demo_homepage/custom_widgets/menu_widget.dart';

class IndivualPage extends StatelessWidget {
  final filterArray = [
    "<\$220.000",
    "For sale",
    "3-4 beds",
    "Kitchen",
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // var screenWidth = MediaQuery.of(context).size.width;
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: ColorConstant.kWhiteColor,
    //   ),      
    // );//lear and add at end 
    
    return Scaffold(
      backgroundColor: ColorConstant.kWhiteColor,

      // map view button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingWidget(        
        leadingIcon: Icons.explore,
        txt: "Map view",
      ),

      body: SingleChildScrollView(//it will remove error of yellow color when all widget can't come in 1 page ,- provide scroll it has properties also
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuWidget(
                    iconImg: Icons.subject,
                    iconColor: ColorConstant.kBlackColor,
                  ),
                  MenuWidget(
                    iconImg: Icons.repeat,
                    iconColor: ColorConstant.kBlackColor,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "City",
                // style: GoogleFonts.notoSans(
                //   fontSize: 12,
                //   color: ColorConstant.kGreyColor,
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "San Francisco",
                // style: GoogleFonts.notoSans(
                //   fontSize: 36,
                //   color: ColorConstant.kBlackColor,
                //   fontWeight: FontWeight.w500,
                // ),
              ),
              Divider(
                color: ColorConstant.kGreyColor,
                thickness: .2,
              ),
              Container(
                height: 50,
                // child: ListView.builder(
                //   shrinkWrap: false,
                //   scrollDirection: Axis.horizontal,
                //   itemCount: filterArray.length,
                //   itemBuilder: (context, index) {
                //     return FilterWidget(
                //       filterTxt: filterArray[index],
                //     );
                //   },
                // ),
                child:ListView.separated(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,                     
                  itemCount: filterArray.length,
                  itemBuilder: (context, index) {
                    return FilterWidget(
                      filterTxt: filterArray[index],
                    );
                  },
                  separatorBuilder: (context, index){
                     return SizedBox(
                      width: 10,
                      );},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                  Constants.houseList.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ImageWidget(
                        Constants.houseList[index],
                        index,
                        Constants.imageList,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
