import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/home_screen/catg_screen/Hospitals.dart';
import 'package:emergigo/views/home_screen/catg_screen/Ride_choice.dart';
import 'package:emergigo/views/home_screen/catg_screen/DriverReccomendation.dart';
import 'package:emergigo/views/home_screen/catg_screen/Track_ride.dart';

import 'package:flutter/material.dart';


class Body extends StatefulWidget {
   Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectedIndex=0;
  var Category=["Hospital Reccomendations","Ride Choices","Track Ride"];
  var listbody=[
    DriverReccomendation(),
    RideChoice(),
    TrackRide(),
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        15.heightBox,
        SizedBox(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Category.length,
            itemBuilder: (context,index)=>buildCategory(index)
            ),
        ),
        5.heightBox,
       Expanded(
        child: listbody.elementAt(selectedIndex))
      ],

    );
    
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex=index;
        });
      },
      child: Column(
        children: [
          Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    Category[index],
                    style: TextStyle(fontFamily: bold,color: selectedIndex==index? Colors.black:Colors.grey)
                    
                  ),
                ),
          Container(
            margin: EdgeInsets.only(top:4),
            height: 2,
            width: 30,
            color:  selectedIndex==index? Colors.green:Colors.grey,
          ),
        
        ],
      ),
    );
  }
}