import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/consts/products.dart';
import 'package:emergigo/views/home_screen/components/itemcard.dart';
import 'package:emergigo/views/home_screen/components/product_detail.dart';
import 'package:flutter/material.dart';

class DriverReccomendation extends StatelessWidget {
  const DriverReccomendation({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        SafeArea(
        
          child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:17,vertical: 20),
            child: GridView.builder(
            itemCount: products.length,
            gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 18,
              crossAxisSpacing: 25,
              crossAxisCount: 2,
              childAspectRatio: 0.65
              ), 
            itemBuilder: (context,index)=>ItemCard(
              product: products[index],
              press: ()=>Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>DetailScreen(product: products[index]))),)
            ),
          ) 
          );
    
    
  }
}

