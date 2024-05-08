import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../../../../core/constants/const_text.dart';
import '../../../../component/back_button.dart';
import '../../../../component/custom_button.dart';
import '../agency_complete_profile_screen/agency_complet_profile_screen.dart';

class AgencyVerifyPasswordScreen extends StatefulWidget {
  const AgencyVerifyPasswordScreen({super.key});

  @override
  State<AgencyVerifyPasswordScreen> createState() => _AgencyVerifyPasswordScreenState();
}

class _AgencyVerifyPasswordScreenState extends State<AgencyVerifyPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final pinController = TextEditingController();
    final passController = TextEditingController();
    final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg_image.png"),
            )),
            child: Padding(
              padding:   EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onPress: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    "Verify Code !",
                    style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top: 8.h),
                    child: Text(
                      verifyDesText,
                      style: desStyle,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kamisofts@gmail.com",
                        style: normalStyle,
                      ),
                      Text(
                        "Change Email",
                        style: normalStyle.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            decorationColor: ConstColor.blueColor.value,
                            color: ConstColor.blueColor.value),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    child: OtpPinField(
                        key: _otpPinFieldController,
                        autoFillEnable: false,
                        textInputAction: TextInputAction.done,
                        onSubmit: (text) {
                          Get.to(AgencyCompleteProfileScreenScreen());
                          print('Entered pin is $text');
                        },
                        onChange: (text) {
                          print('Enter on change pin is $text');
                        },
                        onCodeChanged: (code) {
                          print('onCodeChanged  is $code');
                        },
                        otpPinFieldStyle: OtpPinFieldStyle(
                          defaultFieldBorderColor:ConstColor.greyColor.value,
                          activeFieldBorderColor:ConstColor.primaryColor.value,
                          defaultFieldBackgroundColor: ConstColor.blackColor.value,
                          activeFieldBackgroundColor: ConstColor.blackColor.value,
                          filledFieldBackgroundColor: ConstColor.blackColor.value,
                          filledFieldBorderColor: ConstColor.greyColor.value,
                          textStyle: mediumStyle
                        ),
                        maxLength: 4,
                        showCursor: true,
                        cursorColor: ConstColor.primaryColor.value,
                        upperChild: const Column(
                          children: [
                            SizedBox(height: 30),
                            Icon(Icons.flutter_dash_outlined, size: 150),
                            SizedBox(height: 20),
                          ],
                        ),
                        middleChild: const Column(
                          children: [
                            // SizedBox(height: 30),
                            // ElevatedButton(
                            //     onPressed: () {
                            //       _otpPinFieldController.currentState
                            //           ?.clearOtp(); // clear controller
                            //     },
                            //     child: Text('clear OTP')),
                            // SizedBox(height: 10),
                            // ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage())), child: Text('Next Class')),
                            // SizedBox(height: 30),
                          ],
                        ),
                         showCustomKeyboard: false,
                        // customKeyboard: Container(),
                         showDefaultKeyboard: false,
                        cursorWidth: 2,
                        mainAxisAlignment: MainAxisAlignment.center,
                        otpPinFieldDecoration:
                            OtpPinFieldDecoration.defaultPinBoxDecoration),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),Center(
                    child: Text(
                      "Didn't Receive OTP?",
                      style: desStyle,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),   Center(
                    child: Text(
                      "Resend Code",
                      style: normalStyle.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: ConstColor.blueColor.value,
                          color: ConstColor.blueColor.value),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CommonButton(
                      onPress: () {
                         Get.to(const AgencyCompleteProfileScreenScreen());
                      },
                      title: "Verify"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
