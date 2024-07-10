import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/home_screen/home.dart';
import 'package:emergigo/widgets_common/applogo_widget.dart';
import 'package:emergigo/widgets_common/background_wid.dart';
import 'package:emergigo/widgets_common/com_button.dart';
import 'package:emergigo/widgets_common/custom_login.dart';
import 'package:emergigo/widgets_common/custum_droplist.dart';
import 'package:flutter/material.dart';


class MedicalDetail extends StatelessWidget {
  const MedicalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var item=['Cardiological Pain','Ligament Pain','Headache','Viral Fever'];
    return bgwidget( 
       Scaffold(
        resizeToAvoidBottomInset: false,
        body:  Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget().box.rounded.size(77,77).white.make(),
              12.heightBox,
              "Welcome to EmergiGO".text.white.size(16).fontFamily(bold).make(),
              50.heightBox,
              Column(
                children: [
                  "Provide more details about the Medical Emergency".text.green600.size(18).fontFamily(bold).make(),
                  25.heightBox,
                  custumDrop(item,Med, Medhint, null),
                  8.heightBox,
                  custumLogin(conditon, condhint, null),
                  8.heightBox,
                  custumLogin(Locdescr,Locdescrhint,null),
                  20.heightBox,
                  Align(
                  alignment: Alignment.center,
                  child: "Please note: All the Information given here should be true, as it is a Emergency Service. If there is any wrong details given, it will result in suspension of your account. ".text.black.size(14).fontFamily(regular).make(),
                  ),
                  30.heightBox,
                  ourButton((){Get.to(()=>Home());},Colors.green,whiteColor,submit).box.width(context.screenWidth-50).make(),
                  10.heightBox,

                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).shadowSm.width(context.screenWidth-70).make(),
            ],
          ))));
  
    
  }
}