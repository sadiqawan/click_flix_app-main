 import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/screens/agency_screen/agency_auth_screen/agency_verify_screen/agency_verify_code.dart';
import 'package:click_flex_ui/ui/screens/model_side/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/constants/const_text.dart';
import '../../../../component/complete_profile_comp.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';


class AgencyCompleteProfileScreenScreen extends StatefulWidget {
  const AgencyCompleteProfileScreenScreen({super.key});

  @override
  State<AgencyCompleteProfileScreenScreen> createState() => _AgencyCompleteProfileScreenScreenState();
}

class _AgencyCompleteProfileScreenScreenState extends State<AgencyCompleteProfileScreenScreen> {
  String dropdownValue = 'Option 1';


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final nameController = TextEditingController();
    final   controller=TextEditingController();
    String? _selectedCountryCode;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg_image.png"),
              )),
          child: SingleChildScrollView(
            child: Padding(
              padding:   EdgeInsets.only(left:width*.040,right:width*.040,top: 106 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Complete Your Profile !",
                    style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top:height*.008),
                    child: Text(
                      completeDesText,
                      style: desStyle,
                    ),
                  ),
                  SizedBox(
                    height:40.h,
                  ),

SvgPicture.asset("assets/svg_images/profile_bg.svg"),


    SizedBox(
                    height:32.h,
                  ),

                  CustomTextFieldWithImage2(
                    labelText: "Full Name",
                    controller: nameController,
                    hintText: 'Name',
                  ),

                  CompleteProfileComp(label: 'Gender', items: const [
                   'Select', 'Option 2', 'Option 3', 'Option 4'
                  ],),
                  CompleteProfileComp(label: 'Country', items: const [
                   'Select', 'Option 2', 'Option 3', 'Option 4'
                  ],),
                  CompleteProfileComp(label: 'City', items: const [
                   'Select', 'Option 2', 'Option 3', 'Option 4'
                  ],),
                  CompleteProfileComp(label: 'Account Type', items: const [
                   'Select', 'Option 2', 'Option 3', 'Option 4'
                  ],),

                    SizedBox(height: 32.h,),
                  CommonButton(onPress: () {
                    Get.to(const AgencyVerifyPasswordScreen());
                  }, title: "SinUp"),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


