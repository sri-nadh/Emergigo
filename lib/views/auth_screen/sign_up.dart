import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/details/Location_Detail.dart';
import 'package:emergigo/widgets_common/applogo_widget.dart';
import 'package:emergigo/widgets_common/background_wid.dart';
import 'package:emergigo/widgets_common/com_button.dart';
import 'package:emergigo/widgets_common/custom_login.dart';
import 'package:emergigo/widgets_common/custum_droplist.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck=false;
  var items=['Driver','User'];
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
              12.heightBox,
              "Join EmergiGO".text.white.size(16).fontFamily(bold).make(),
              35.heightBox,
              Column(
                children: [
                  custumLogin(name, namehint, null),
                  8.heightBox,
                  custumLogin(phone, phonehint, null),
                  8.heightBox,
                  custumDrop(items,role,rolehint,null),
                  8.heightBox,
                  custumLogin(email,emailhint,null),
                  8.heightBox,
                  custumLogin(pass, passhint,null),
                  8.heightBox,
                  
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Vx.green600,
                        checkColor: whiteColor,
                        value: isCheck,
                      onChanged:(newValue){
                        setState(() {
                          isCheck=newValue;
                        });
                      }),
                      2.widthBox,
                      Expanded(child: Text("I agree to Terms and Conditions & Privacy policies",style: TextStyle(fontFamily: regular),)),
                    ],
                  ),
                  
                    8.heightBox,
                    ourButton((){Get.to(()=>LocationDetail());},isCheck==true? Colors.green:Colors.grey,whiteColor,signup).box.width(context.screenWidth-50).make(),
                   
                  
                    
                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).shadowSm.width(context.screenWidth-70).make(),



          ],)
        )

        ),
    );
    
  }
}