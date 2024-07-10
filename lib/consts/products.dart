import 'package:flutter/material.dart';

class Product {
  final String? title, description;
  final String image;
  final int? id;
  final Color? color;
  Product({
    this.id,
    required this.image,
    this.title,
    this.description,
    this.color,
  });
}
List<Product> products = [
  Product(
      id: 1,
      title: "Amrita Kripa Charitable Hospital",
      description: "5.0",
      image: "assets/icons/hospital-1.png",
      color: Colors.grey,
  ),
  Product(
      id: 2,
      title: "Vallickavu Government Hospital",
      description:  "4.4",
      image: "assets/icons/hospital-1.png",
      color: Colors.grey,
  ),
  Product(
      id: 3,
      title: "Jeevani Ayurveda Hospital Vallikkavu",
      description:  "4.2",
      image: "assets/icons/hospital-1.png",
      color: Colors.grey
      ),
  Product(
      id: 4,
      title: "RCPM Hospital",
      description:  "3.9",
      image: "assets/icons/hospital-1.png",
      color: Colors.grey,
      ),
  
];








