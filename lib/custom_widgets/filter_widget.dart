// import 'package:demo_homepage/common/color_constants.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';


class FilterWidget extends StatefulWidget {
   final String filterTxt;
  const FilterWidget({
    Key key,
    this.filterTxt,
  }) : super(key: key);
  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    bool _isselected=false;
    
        return FilterChip(
            label: Text(widget.filterTxt),
            labelStyle: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold,),
            padding: EdgeInsets.fromLTRB(15, 15, 10, 15),
            elevation: 5,
            // labelPadding: EdgeInsets.all(10),            
            selected: _isselected,
            backgroundColor: Color(0xff6200ee),
            selectedColor: Colors.yellow,
            pressElevation: 5,
            shadowColor: Colors.blueAccent,
       onSelected: (bool isselected)
       {
           setState((){
              _isselected=!isselected;
           });
       }
    
        );
  }
}

class GoogleFonts {
}


/*
class FilterWidget extends StatelessWidget {
  final String filterTxt;
  const FilterWidget({
    Key key,
    this.filterTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: ColorConstant.kFilterBackColor,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Text(
              filterTxt,
              // style: GoogleFonts.notoSans(
              //   fontSize: 18,
              //   fontWeight: FontWeight.w500,
              //   color: ColorConstant.kBlackColor,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
*/