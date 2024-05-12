import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/screens/agency_screen/agency_auth_screen/agency_verify_screen/agency_verify_code.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/const_text.dart';
import '../../../../component/complete_profile_comp.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';

class AgencyCompleteProfileScreenScreen extends StatefulWidget {
  const AgencyCompleteProfileScreenScreen({Key? key}) : super(key: key);

  @override
  _AgencyCompleteProfileScreenScreenState createState() =>
      _AgencyCompleteProfileScreenScreenState();
}

class _AgencyCompleteProfileScreenScreenState
    extends State<AgencyCompleteProfileScreenScreen> {
  late TextEditingController nameController;
  String dropdownValue = 'Option 1';

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * .040, right: width * .040, top: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Complete Your Profile!",
                      style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * .008),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        completeDesText,
                        style: desStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white24),
                        ),
                        child: Padding(
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
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.black,
                            border: Border.all(color: Colors.white24),
                          ),
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
                  SizedBox(height: 20,),
                  CustomTextFieldWithImage2(
                    labelText: "Full Name",
                    controller: nameController,
                    hintText: 'Name',
                  ),
                  CompleteProfileComp(
                    label: 'Gender',
                    items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
                  ),
                  CompleteProfileComp(
                    label: 'Country',
                    items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
                  ),
                  CompleteProfileComp(
                    label: 'City',
                    items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
                  ),
                  CompleteProfileComp(
                    label: 'Account Type',
                    items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CommonButton(
                    onPress: () {
                      Get.to(const AgencyVerifyPasswordScreen());
                    },
                    title: "SignUp",
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
