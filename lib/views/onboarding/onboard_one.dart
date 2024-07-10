import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/onboarding/onboard_two.dart';
import 'package:flutter/material.dart';

class onboardone extends StatefulWidget {
  const onboardone({super.key});

  @override
  State<onboardone> createState() => _onboardoneState();
}

class _onboardoneState extends State<onboardone> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      //get_x
      Get.to(()=> const onboardtwo());
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
            Image.asset(iconb1).circle(radius: 180, backgroundColor:whiteColor).centered(),
            25.heightBox,
            onb1.text.fontFamily(bold).size(18).white.make(),
            140.heightBox,
            onb1_d.text.fontFamily(regular).white.center.make(),
            
          ],
        ) ),
    );
  }
}