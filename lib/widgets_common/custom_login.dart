import 'package:emergigo/consts/consts.dart';
import 'package:flutter/material.dart';

Widget custumLogin(String? title,String? hint,controller){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.green600.size(15).fontFamily(semibold).make(),
      5.heightBox,
      TextFormField(
        decoration:  InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            fontSize: 15,
            color: textfieldGrey,
          ),
          hintText:  hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none, //shows border ,only when clicked.
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

        ),
      ),
      5.heightBox,
      

    ],
  );
}