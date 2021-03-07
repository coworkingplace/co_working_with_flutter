import 'package:flutter/material.dart';

double iconSize = 30;

// List<Filtercheck> featurelist = 
  //  Filtercheck("hello",false);

// class Listfeatures{
//   List<Feature> features;

//   Listfeatures({
//     @required this.features,
//   });
// }

class Feature {

  Map<bool, String> fetureDetail;
 

  Feature({  
    @required this.fetureDetail,  
  });
}

class Filtercheck{
  String featurename;
  bool istrue;

  Filtercheck({
    @required this.featurename,
    @required this.istrue,
  });
}
