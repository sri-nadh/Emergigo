import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/controllers/home_ctrl.dart';
import 'package:emergigo/views/category/category_screen.dart';
import 'package:emergigo/views/home_screen/home_screen.dart';
import 'package:emergigo/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller=Get.put(HomeController());

    var navbarlist=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label:home ),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label: catgory),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width:26),label:profile )
      ];
    var navbody=[
      HomeScreen(),CategoryScreen(),ProfileScreen()
    ];


    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navbody.elementAt(controller.NavCurrentIndex.value))),
        ],
      ),

      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
      
          currentIndex: controller.NavCurrentIndex.value,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          backgroundColor:Colors.black,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          items: navbarlist,
          onTap: (value) => {
            controller.NavCurrentIndex.value=value,
          },
          
          
        
        
        ),
      ),




    );
  }
}