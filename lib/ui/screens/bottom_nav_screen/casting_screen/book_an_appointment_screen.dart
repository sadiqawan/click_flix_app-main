import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/const_style.dart';
import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';

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
                child: Placeholder(),
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
                // Get.dialog(
                //
                // );
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
