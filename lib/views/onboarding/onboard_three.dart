import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

class onboardthree extends StatefulWidget {
  const onboardthree({super.key});

  @override
  State<onboardthree> createState() => _onboardthreeState();
}

class _onboardthreeState extends State<onboardthree> {
changeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      //get_x
      Get.to(()=> const LoginScreen());
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
            Image.asset(iconb3).circle(radius: 180, backgroundColor:whiteColor).centered(),
            25.heightBox,
            onb3.text.fontFamily(bold).size(18).white.make(),
            140.heightBox,
            onb3_d.text.fontFamily(regular).white.center.make(),
            
          ],
        ) ),
    );
  }
}