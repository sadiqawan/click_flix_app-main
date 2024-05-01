 import 'package:click_flex_ui/core/constants/const_style.dart';

import 'package:click_flex_ui/ui/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../../core/constants/const_text.dart';
import '../../../component/complete_profile_comp.dart';
import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';


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
              padding:   EdgeInsets.only(left:width*.040,right:width*.040,top: height*.20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: height*.032,
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

                  const SizedBox(height: 24,),
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


