import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/onboarding/onboard_one.dart';
import 'package:emergigo/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //changing screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 4),(){
      //get_x
      Get.to(()=> const onboardone());
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
            20.heightBox,
            applogoWidget(),
            25.heightBox,
            appname.text.fontFamily(bold).size(18).white.make(),
            Spacer(),
            appversion.text.fontFamily(regular).white.size(5).make(),
            30.heightBox
          ],
        ) ),
    );
  }
}