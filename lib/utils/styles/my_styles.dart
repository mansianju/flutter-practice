

import 'package:flutter/material.dart';

class MyStyles{
  //***********Colors************//
  Color appColor = Color(0xFFCC7861);
  Color white = Colors.white;
  Color lightAppColor =  Color(0xFFF2DECB);


  //***********TextStyles************//
  TextStyle heading = const TextStyle(fontSize: 28,color: Color(0xFFCC7861),fontWeight: FontWeight.bold);
  TextStyle textStyleBlack = const TextStyle(fontSize: 13,color: Colors.black);
  TextStyle textStyleWhite = const TextStyle(fontSize: 14,color: Colors.white);
  TextStyle textStyleAppColor = const TextStyle(fontSize: 14,color:Color(0xFFCC7861));
  ButtonStyle get buttonAppStyle => ElevatedButton.styleFrom(backgroundColor:  const Color(0xFFCC7861),padding: const EdgeInsets.symmetric(horizontal: 50));
  ButtonStyle get buttonLightStyle => ElevatedButton.styleFrom(backgroundColor:  const Color(0xFFFAF0E6),padding: const EdgeInsets.symmetric(horizontal: 50));
}