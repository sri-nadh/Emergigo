import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/consts/products.dart';
import 'package:emergigo/widgets_common/background_wid.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
    Scaffold(
      resizeToAvoidBottomInset: false,
      body: 
      Center(
        child: Column(
          
          children: [
                150.heightBox,
                Image.asset(product.image).circle(radius: 230, backgroundColor:lightGrey).centered(),
                20.heightBox,
                Align(
                  alignment: Alignment.center,
                 child:  Text(product.title!,style: TextStyle(fontFamily: bold,color: Colors.green,fontSize: 27)),
                ),
               
          ],
          
        ),
      ),
     
      
    ),
    );
  }
}