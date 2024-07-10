import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/onboarding/onboard_three.dart';
import 'package:flutter/material.dart';

class onboardtwo extends StatefulWidget {
  const onboardtwo({super.key});

  @override
  State<onboardtwo> createState() => _onboardtwoState();
}

class _onboardtwoState extends State<onboardtwo> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      //get_x
      Get.to(()=> const onboardthree());
    });
    }
  @override
  void initState() {
    changeScreen();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Align(alignment:Alignment.topLeft,child: Image.asset(icSplashBg,width: 360)),
            Image.asset(iconb2).circle(radius: 180, backgroundColor:whiteColor).centered(),
            25.heightBox,
            onb2.text.fontFamily(bold).size(18).white.make(),
            140.heightBox,
            onb2_d.text.fontFamily(regular).white.center.make(),
            
          ],
        ) ),
    );
  }
  
}