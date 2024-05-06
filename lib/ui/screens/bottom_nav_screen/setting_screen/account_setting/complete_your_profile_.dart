import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/const_colors.dart';
import '../../../../../core/constants/const_style.dart';
import '../../../../component/complete_profile_comp.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';

class CompleteYourScreen extends StatefulWidget {
  const CompleteYourScreen({super.key});

  @override
  State<CompleteYourScreen> createState() => _CompleteYourScreenState();
}

class _CompleteYourScreenState extends State<CompleteYourScreen> {
  final nameController = TextEditingController();
  final requirementController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ConstColor constColor = Get.put(ConstColor());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: height * .052,
            right: width * .040,
            left: width * .030,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Account Settings',
                    style: normalStyle,
                  ),
                  const SizedBox()
                ],
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
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    SimpleCustomTextFieldWithSuffixAssetImage(
                      controller: nameController,
                      hintText: 'Full Name',
                      labelText: 'Full Name',
                      image: 'assets/images/edit_icon.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SimpleCustomTextFieldWithSuffixAssetImage(
                      controller: nameController,
                      hintText: 'EmailAddress',
                      labelText: 'EmailAddress',
                      image: 'assets/images/edit_icon.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SimpleCustomTextFieldWithSuffixAssetImage(
                      controller: nameController,
                      hintText: 'PhoneNumber',
                      labelText: 'PhoneNumber',
                      image: 'assets/images/edit_icon.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SimpleCustomTextFieldWithSuffixAssetImage(
                      controller: nameController,
                      hintText: 'Password',
                      labelText: 'Password',
                      image: 'assets/images/edit_icon.png',
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 150,
                          child:SimpleCustomTextFieldWithSuffixText(
                            labelText: "Gender",
                            controller: requirementController,
                            hintText: 'Height From',
                            suffix: '',
                          ),
                        ), SizedBox(width: 150,
                          child:SimpleCustomTextFieldWithSuffixText(
                            labelText: "Account Type",
                            controller: requirementController,
                            hintText: 'Account Type',
                            suffix: '',

                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 150,
                          child:SimpleCustomTextFieldWithSuffixText(
                            labelText: "Country",
                            controller: requirementController,
                            hintText: 'Country',
                            suffix: '',
                          ),
                        ),
                        SizedBox(width: 150,
                          child:SimpleCustomTextFieldWithSuffixText(
                            labelText: "City",
                            controller: requirementController,
                            hintText: 'City',
                            suffix: '',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(15)
                  ),
                    child: TextButton(onPressed: (){},
                        child: Text('Delete My Account',style: desStyleWithWhite.copyWith(color: Colors.red)),),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                        flex: 1,
                        child: CommonButton(onPress: () {}, title: 'Save',)),
                const SizedBox(width: 8,),
                    Expanded(child: Container(
                      height: 58,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white24),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextButton(onPressed: (){},
                        child: Text('Cancel',style: desStyleWithWhite.copyWith(color: Colors.red)),),
                    ),),

                  ],
                ),
              ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CommonButton(onPress: () {}, title: 'Save',),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 14.0),
            //       child: Container(
            //
            //         height: 50,
            //         decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white24),
            //             borderRadius: BorderRadius.circular(15)
            //         ),
            //         child: TextButton(onPressed: (){},
            //           child: Text('Delete My Account',style: desStyleWithWhite.copyWith(color: Colors.red)),),
            //       ),
            //     ),
            //   ],
            // )
            ],
          ),
        ),
      ),
    );
  }
}
