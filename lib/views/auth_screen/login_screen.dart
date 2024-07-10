import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/auth_screen/sign_up.dart';
import 'package:emergigo/views/details/Location_Detail.dart';
import 'package:emergigo/widgets_common/applogo_widget.dart';
import 'package:emergigo/widgets_common/background_wid.dart';
import 'package:emergigo/widgets_common/com_button.dart';
import 'package:emergigo/widgets_common/custom_login.dart';
import 'package:flutter/material.dart';
import 'package:emergigo/consts/lists.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              "Login Account".text.white.size(15).fontFamily(semibold).make(),
              40.heightBox,
              Column(
                children: [
                  custumLogin(phone,phonehint,null),
                  5.heightBox,
                  custumLogin(pass, passhint,null),
                  Align
                  ( alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetpass.text.green600.make())),
                    4.heightBox,
                    ourButton((){Get.to(()=>LocationDetail());},Colors.green,whiteColor,login).box.width(context.screenWidth-50).make(),
                    8.heightBox,
                    "or Create a new account".text.green600.fontFamily(regular).make(),
                    8.heightBox,
                    ourButton((){Get.to(()=>SignupScreen());}, Colors.green, whiteColor,signup).box.width(110).make(),
                    8.heightBox,
                    "Log in with".text.fontFamily(regular).green600.make(),
                    8.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Vx.green100,
                          radius: 25,
                          child: Image.asset(socialmedia[index],width: 30,),
                      
                        ),
                      )),
                    )
                    





                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).shadowSm.width(context.screenWidth-70).make(),



          ],)
        )

        ),
    );
    
  }
}