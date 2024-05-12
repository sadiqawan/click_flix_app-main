 import 'package:click_flex_ui/core/constants/const_style.dart';
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
import '../../bottom_nav_screen/bottom_nav_screen.dart';


class CompleteProfileScreenScreen extends StatefulWidget {
  const CompleteProfileScreenScreen({super.key});

  @override
  State<CompleteProfileScreenScreen> createState() => _CompleteProfileScreenScreenState();
}

class _CompleteProfileScreenScreenState extends State<CompleteProfileScreenScreen> {
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
              padding:   EdgeInsets.only(left:width*.040,right:width*.040,top: 90 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Complete Your Profile !",
                      style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,

                    child: Padding(
                      padding:   EdgeInsets.only(top:height*.008),
                      child: Text(
                        completeDesText,
                        style: desStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height:40.h,
                  ),

                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // gradient: const LinearGradient(
                          //   colors: [Color(0xffA513B8), Color(0xffEA3B12)],
                          // ),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white24)),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black38,
                            radius: 60,
                            backgroundImage: AssetImage(
                              'assets/images/icons_person.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 98,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            // gradient: const LinearGradient(
                            //   colors: [Color(0xffA513B8), Color(0xffEA3B12)],
                            // ),
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.black,
                              border: Border.all(color: Colors.white24)),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Image.asset(
                              'assets/images/edit_icon.png',
                              height: 17,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  // const Row(
                  //   children: [
                  //   CountryCodePicker(
                  //   onChanged: print,
                  //    initialSelection: 'IT',
                  //   favorite: ['+39','FR'],
                  //    showCountryOnly: false,
                  //    showOnlyCountryWhenClosed: false,
                  //    alignLeft: false,
                  // ),
                  //
                  //     SizedBox(width: 8),
                  //     // TextField(
                  //     //   controller: controller,
                  //     //   decoration: InputDecoration(
                  //     //     hintText: 'Enter phone number',
                  //     //     labelText: 'Phone Number',
                  //     //     border: OutlineInputBorder(),
                  //     //   ),
                  //     // ),
                  //   ],
                  // ),

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
                    Get.to(const BottomNavScreen());
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


