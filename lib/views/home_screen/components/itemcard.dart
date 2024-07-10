import 'package:emergigo/consts/products.dart';
import 'package:flutter/material.dart';
import 'package:emergigo/consts/consts.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;
  const ItemCard({
    this.press,
    this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 175,
            decoration: BoxDecoration(
            
             borderRadius: BorderRadius.circular(16),
              color: product?.color,
            ),
            child: Image.asset(product!.image),
          ),
          7.heightBox,
          Text(product!.title!,style: TextStyle(fontFamily: semibold),),
          3.heightBox,
          Text(product!.description!,style: TextStyle(fontFamily: semibold),),
          
    
        ],
      ),
    );
  }
}