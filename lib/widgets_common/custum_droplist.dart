import 'package:emergigo/consts/consts.dart';
import 'package:flutter/material.dart';

Widget custumDrop(List? Drop,String? title,String? hint,controller){
  final TextEditingController _controller = new TextEditingController();
  var items=Drop;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.green600.size(15).fontFamily(semibold).make(),
      5.heightBox,
      TextFormField(
        controller: _controller,
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
      Align(
        alignment: Alignment.center,
         child:    PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
        return items!.map<PopupMenuItem<String>>((var value) 
        {
        return  PopupMenuItem(child: new Text(value), value: value);
                  }).toList();
         },
        ),
      ),
      5.heightBox,
      

    ],
  );
}