import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constants/const_colors.dart';
import '../../../../../core/constants/const_style.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';
import '../bottom_nav_screen.dart';

class BookAnAppointmentScreen extends StatefulWidget {
  const BookAnAppointmentScreen({super.key});

  @override
  State<BookAnAppointmentScreen> createState() => _BookAnAppointmentScreenState();
}

class _BookAnAppointmentScreenState extends State<BookAnAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final timeController = TextEditingController();

    return Padding(
      padding:  EdgeInsets.only(
        top: height * .052,
        right: width * .040,
        left: width * .030,

      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
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
                    'BookAnAppointment',
                    style: normalStyle,
                  ),
                  const SizedBox()
                ],
              ),
              SizedBox(
                height: height * .6,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Align(
                    alignment: Alignment.centerLeft,
                        child: Text('June 2023',style: desStyleWithWhite ,)),
                    Image.asset('assets/images/calender_image.PNG')
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 150,
                      child:SimpleCustomTextFieldWithSuffixText(
                        keyBordType: TextInputType.datetime,
                        labelText: "Time",
                        controller: timeController,
                        hintText: "-",
                        suffix: '',

                      ),
                    ),
                    Container(
                        width: 60,
                        height: 50,

                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(12),
                            border: Border()
                        ),
                        child: Center(child: Text('10 AM',style: desStyle.copyWith(fontSize: 21),))),
                    SizedBox(width: 100,
                      child:SimpleCustomTextFieldWithSuffixText(
                        labelText: "+",
                        controller: timeController,
                        hintText: '+',
                        suffix: '',

                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: height *.1),
                child: CommonButton(
                  onPress: () {
                    Get.dialog(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              decoration:  BoxDecoration(
                                color: ConstColor.lightblackColor.value,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Material(
                                  color: ConstColor.lightblackColor.value,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/icon_success.png',height: 80,width: 80,),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Please Wait ",
                                        textAlign: TextAlign.center,
                                        style: desStyleWithWhite ,
                                      ),
                                      const SizedBox(height: 15),
                                      Text(
                                        "For Your Confirmation",
                                        textAlign: TextAlign.center,
                                        style: desStyleWithWhite ,
                                      ),
                                      const SizedBox(height: 20),
                                      //Buttons
                                      CommonButton(
                                        onPress: () {
                                          Get.to(const BottomNavScreen());
                                        },
                                        title: 'Submit',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  title: 'Next',
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
