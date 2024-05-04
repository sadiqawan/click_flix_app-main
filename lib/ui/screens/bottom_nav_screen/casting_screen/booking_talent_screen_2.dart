
import 'package:click_flex_ui/controller/AppController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/complete_profile_comp.dart';
import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';
import '../../../component/pop_over.dart';
import '../../../component/text.dart';

class BookingTalentScreen2 extends StatefulWidget {
  const BookingTalentScreen2({super.key});

  @override
  State<BookingTalentScreen2> createState() => _BookingTalentScreen2State();
}

class _BookingTalentScreen2State extends State<BookingTalentScreen2> {

  AppController appController = Get.put(AppController());
  final titleController = TextEditingController();
  final requirementController = TextEditingController();
  final dateController = TextEditingController();
  final heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    'Booking Talent',
                    style: normalStyle,
                  ),
                  const SizedBox()
                ],
              ),

              Padding(
                padding: EdgeInsets.only(
                    top: height * .03, left: width * .08, right: width * .06),
                child: Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 7.0, left: 25, right: 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.check_circle_sharp,
                            color: Colors.red,
                          ),
                          Expanded(
                            child: Divider(
                              color: ConstColor.greyColor.value,
                              thickness: 1,
                              indent: 25,
                              endIndent: 15,
                            ),
                          ),
                          Icon(
                            Icons.check_circle_sharp,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Basic Info',
                          style: desStyle,
                        ),
                        Text(
                          'Model Request',
                          style: desStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 5,
              ),
              // CompleteProfileComp(
              //   label: 'Gender',
              //   items: const ['Man & Women', 'Option 2', 'Option 3', 'Option 4'],
              // ),
              const SizedBox(
                height: 5,
              ),

              // CustomTextFieldWithImage2(
              //   labelText: "Requirement",
              //   controller: requirementController,
              //   hintText: 'Requirement',
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // CustomTextFieldWithImage2(
              //   image: SvgPicture.asset(
              //     "assets/svg_images/date_icon.svg",
              //
              //   ),
              //   labelText: "Date",
              //   controller: dateController,
              //   hintText: 'Date',
              // ),

              const SizedBox(
                height: 5,
              ),
              CompleteProfileComp(
                label: 'Gender',
                items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
              ),
              const SizedBox(
                height: 5,
              ),
              CompleteProfileComp(
                label: 'Ethnicity',
                items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
              ),
              const SizedBox(
                height: 5,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       children: [
              //         CustomTextFieldWithImage2(controller: heightController, hintText: 'Height',),
              //       ],
              //     ), Column(
              //       children: [
              //         CustomTextFieldWithImage2(controller: heightController, hintText: 'Height',),
              //       ],
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 8,
              ),

              CommonButton(
                onPress: () {},
                title: 'Next',
              )
            ],
          ),
        ),
      ),
    );
  }
}
