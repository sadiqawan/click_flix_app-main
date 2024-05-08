import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/screens/model_side/profile_screen/profile_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import '../../../../../core/constants/const_text.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';
import '../../../../component/rounnd_button.dart';
import '../../../model_side/auth/forgot_pass_screen/forgot_pass_screen.dart';
import '../agency_forgot_pass_screen/agency_forgot_pass_screen.dart';
class AgencyLoginScreen extends StatefulWidget {
  const AgencyLoginScreen({super.key});

  @override
  State<AgencyLoginScreen> createState() => _AgencyLoginScreenState();
}

class _AgencyLoginScreenState extends State<AgencyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final emailController = TextEditingController();
    final passController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg_image.png"),
            )),
            child: Padding(
              padding:   EdgeInsets.only(left:16.w,right:16.w, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "welcome back !",
                    style: mediumStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 25.sp),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top:8.h),
                    child: Text(
                      welcomeDesText,
                      style: desStyle,
                    ),
                  ),
                    SizedBox(
                    height:50.h,
                  ),
                  CustomTextFieldWithImage2(
                    labelText: "Email Address",
                    controller: emailController,
                    hintText: 'Email',
                  ),
                    SizedBox(
                    height: height*.008,
                  ),
                  CustomTextFieldWithImage2(
                    image: SvgPicture.asset(
                      "assets/svg_images/icon_password.svg",
                    ),
                    labelText: "Password",
                    controller: passController,
                    hintText: 'Password',
                  ),
                    SizedBox(
                    height: 24.h,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          onTap: () {
                            Get.to(ForgotPassScreen());
                          },
                          child: Text(
                            "Forget Password !",
                            style: desStyle.copyWith(
                                color: ConstColor.blueColor.value),
                          ))),
                    SizedBox(
                    height: 32.h,
                  ),
                  CommonButton(onPress: () {
                    Get.to(const ProfileScreen());
                  }, title: "Login"),
      
                  Padding(
                    padding:   EdgeInsets.symmetric(vertical:32.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: ConstColor.greyColor.value,
                            thickness: .2,
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          width: width*.024,
                        ),
                        Text(
                          "Or Login With",
                          style: desStyle,
                        ),
                        SizedBox(
                          width: width*.024,
                        ),
                        Expanded(
                          child: Divider(
                            color: ConstColor.greyColor.value,
                            thickness: .2,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/apple.svg"),
                      ),
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/face_book.svg"),
                      ),
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/google.svg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:58.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t Have An Account ?",
                        style: normalStyle.copyWith(fontSize: 14),
                      ),
                      Text(
                        "Sign Up",
                        style: desStyle.copyWith(
                            color: ConstColor.blueColor.value,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
