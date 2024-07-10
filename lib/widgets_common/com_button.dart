
import 'package:emergigo/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton(onPress,color,textcolor,title){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.all(12)
    ),
    onPressed: onPress, 
    child: 
    Text(title,style: TextStyle(fontFamily: bold,color: textcolor)));
}