import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/details/Map_Location.dart';
import 'package:emergigo/views/details/Medical_Detail.dart';
import 'package:emergigo/widgets_common/applogo_widget.dart';
import 'package:emergigo/widgets_common/background_wid.dart';
import 'package:emergigo/widgets_common/com_button.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
     return bgwidget( 
       Scaffold(
        resizeToAvoidBottomInset: false,
        body:  Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget().box.rounded.size(77,77).white.make(),
              15.heightBox,
              "Welcome to EmergiGO".text.white.size(15).fontFamily(semibold).make(),
              70.heightBox,
              Column(
                children: [
                  15.heightBox,
                  Align(
                  alignment: Alignment.topLeft,
                  child: "Hi, nice to meet you ! ".text.green600.size(25).fontFamily(bold).make(),
                  ),
                  50.heightBox,
                  "Choose your location to start finding Drivers near you.".text.green600.size(15).fontFamily(semibold).make(),
                  40.heightBox,
                  ourButton((){Get.to(()=>CurrentLocation());},Colors.green,whiteColor,Loc).box.width(context.screenWidth-50).make(),
                  25.heightBox,
                  Align(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){}, child: Locman.text.red400.make())),
                
                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).shadowSm.width(context.screenWidth-70).make(),
            ],
          ),
        ),
       )
     );
  }
}