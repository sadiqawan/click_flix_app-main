import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/ui/screens/model_side/bottom_nav_screen/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

import '../reel_screen/reel_screen.dart';
import 'casting_screen/casting_screen.dart';
import 'exploer_screen/exploer_screen.dart';
import 'models_screen/models_screen.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  List page= const [
    ExploerScreen(),
    ModelsScreen(),
    CastingScreen(),
    SettingScreen(),
  ];
  final iconList = <IconData>[
    TablerIcons.man,
    TablerIcons.menu,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
  var _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment. bottomCenter,
        colors: [
          ConstColor.gradientTwoColor.value,
          ConstColor.gradientOneColor.value], // Specify your gradient colors

    ),),
        child: FloatingActionButton(

          backgroundColor: Colors.transparent,
         shape: const CircleBorder(
           side: BorderSide(color: Colors.blueAccent)
         ),
        onPressed: () {
            Get.to(reel_screen());
          },
          child: SvgPicture.asset("assets/svg_images/add.svg",width: 30,height: 30,),

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(

        backgroundColor: ConstColor.lightblackColor.value.withOpacity(.7),
        icons:  iconList,

        inactiveColor: ConstColor.greyColor.value,
        activeColor: ConstColor.primaryColor.value,
        activeIndex: _bottomNavIndex,

        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 24,

        rightCornerRadius: 24,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body:  Center(
        child: page.elementAt(_bottomNavIndex),
      ),
    );

  }
}
