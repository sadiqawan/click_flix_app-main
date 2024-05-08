
import 'package:click_flex_ui/ui/screens/agency_screen/agency_auth_screen/agency_login_screen/agency_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import '../../../../../core/constants/const_style.dart';
import '../../../../component/custom_button.dart';
import '../agency_signup_screen/agency_signup_screen.dart';


class AgencyUserSelectionScreen extends StatefulWidget {
  const AgencyUserSelectionScreen({super.key});

  @override
  State<AgencyUserSelectionScreen> createState() => _AgencyUserSelectionScreenState();
}

class _AgencyUserSelectionScreenState extends State<AgencyUserSelectionScreen> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/bg_splash.png"),
          ),

          Container(
            padding: EdgeInsets.only(left: 16.w,right: 16.w),
            width: double.infinity,
            height: double.infinity,
            decoration:   BoxDecoration(
              gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                  ]
              ),
            ),

          ),
          Container(
            padding: EdgeInsets.only(left: 16.w,right: 16.w),
            width: double.infinity,
            height: double.infinity,
            decoration:   BoxDecoration(

              gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.7),
                  ]
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/logo.png",width: 84.w,height: 93.h,),
                Text("CLICK FLEX",style: mediumStyle,
                 ),


                SizedBox(height:43.h,),
                CommonButton(onPress: () {
                  Get.to(const AgencySignUpScreen());
                }, title: 'Signup',),


                CustomBtnWithImage(text: 'Continue With Phone Number', image: SvgPicture.asset("assets/svg_images/phone_number.svg"), onTap: () {  },),
                CustomBtnWithImage(text: 'Continue With Apple', image: SvgPicture.asset("assets/svg_images/apple.svg"), onTap: () {  },),
                CustomBtnWithImage(text: 'Continue With Facebook', image: SvgPicture.asset("assets/svg_images/face_book.svg"), onTap: () {  },),
                CustomBtnWithImage(text: 'Continue With Google', image: SvgPicture.asset("assets/svg_images/google.svg"), onTap: () {  },),

                Padding(
                  padding:   EdgeInsets.only(top: 32.h),
                  child: InkWell(
                    onTap: (){
                      Get.to(const AgencyLoginScreen());
                    },
                    child: SizedBox(
                      height: 56.h,
                        child: Text("Login",style: normalStyle)),
                  ),
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
