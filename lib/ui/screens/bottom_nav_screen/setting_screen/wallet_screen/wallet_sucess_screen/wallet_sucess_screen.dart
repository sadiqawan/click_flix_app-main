import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/component/custom_button.dart';
import 'package:click_flex_ui/ui/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class WalletSucessesScreen extends StatefulWidget {
  const WalletSucessesScreen({super.key});

  @override
  State<WalletSucessesScreen> createState() => _WalletSucessesScreenState();
}

class _WalletSucessesScreenState extends State<WalletSucessesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:AssetImage("assets/images/bg_image.png"),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:   EdgeInsets.only(top: 200.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: SvgPicture.asset("assets/svg_images/sucess_image.svg"),
                      ),
                      SizedBox(height: 34.h,),
                      Text("Successfully",style: mediumStyle,),
                      SizedBox(height: 16.h,),
                      Text("We Has Been Withdrawn Your  Balance",style: desStyle,),
                    ],
                  ),
                ),

                Padding(
                  padding:   EdgeInsets.only(bottom: 32.h),
                  child: CommonButton(onPress: (){
                    Get.to(BottomNavScreen());
                  }, title: "Back TO Home"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
