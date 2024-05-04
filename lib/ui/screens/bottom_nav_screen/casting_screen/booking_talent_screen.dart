
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/complete_profile_comp.dart';
import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';

class BookingTalentScreen extends StatefulWidget {
  const BookingTalentScreen({super.key});

  @override
  State<BookingTalentScreen> createState() => _BookingTalentScreenState();
}

class _BookingTalentScreenState extends State<BookingTalentScreen> {
  final titleController = TextEditingController();
  final requirementController = TextEditingController();
  final dateController = TextEditingController();

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
                            color: ConstColor.greyColor.value,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Model Request',
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
              // Padding(
              //   padding: EdgeInsets.only(
              //       top: height * .05, left: width * .08, right: width * .06),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //
              //
              //       // Column(
              //       //   crossAxisAlignment: CrossAxisAlignment.center,
              //       //   children: [
              //       //     const Icon(
              //       //       Icons.check_circle_sharp,
              //       //       color: Colors.red,
              //       //     ),
              //       //     const SizedBox(
              //       //       height: 15,
              //       //     ),
              //       //     Text(
              //       //       'Basic Info',
              //       //       style: desStyleWithRed,
              //       //     )
              //       //   ],
              //       // ),
              //       // Expanded(
              //       //   child: Divider(
              //       //     color: ConstColor.greyColor.value,
              //       //     thickness: 1,
              //       //     indent: 25,
              //       //     endIndent: 15,
              //       //   ),
              //       // ),
              //       // Column(
              //       //   crossAxisAlignment: CrossAxisAlignment.center,
              //       //
              //       //   children: [
              //       //     Icon(
              //       //       Icons.check_circle_sharp,
              //       //       color: ConstColor.greyColor.value,
              //       //     ),
              //       //     const SizedBox(
              //       //       height: 15,
              //       //     ),
              //       //     Text(
              //       //       'Model Request',
              //       //       style: desStyle,
              //       //     )
              //       //   ],
              //       // ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * .03, left: width * .02, right: width * .02),
                child: Container(
                  height: height * .2,
                  width: width,
                  decoration: BoxDecoration(
                      color: ConstColor.lightblackColor.value,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icon_camra.png',
                      color: Colors.white,
                      height: 52,
                      width: 57,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
        
              CustomTextFieldWithImage2(
                // image: SvgPicture.asset(
                //   "assets/svg_images/icon_password.svg",
                // ),
                labelText: "Title",
                controller: titleController,
                hintText: 'Title',
              ),
              const SizedBox(
                height: 5,
              ),
        
              CustomTextFieldWithImage2(
                labelText: "Requirement",
                controller: requirementController,
                hintText: 'Requirement',
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextFieldWithImage2(
                image: SvgPicture.asset(
                  "assets/svg_images/date_icon.svg",

                ),
                labelText: "Date",
                controller: dateController,
                hintText: 'Date',
              ),

              const SizedBox(
                height: 5,
              ),
              CompleteProfileComp(
                label: 'Country',
                items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
              ),
              const SizedBox(
                height: 5,
              ),
              CompleteProfileComp(
                label: 'City',
                items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
              ),
              const SizedBox(
                height: 5,
              ),
              CompleteProfileComp(
                label: 'Payment System',
                items: const ['Select', 'Option 2', 'Option 3', 'Option 4'],
              ),
              const SizedBox(
                height: 5,
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
