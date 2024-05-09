import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/ui/component/custom_button.dart';
import 'package:click_flex_ui/ui/component/top_back_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../../../core/constants/const_style.dart';
import '../../../../../../component/custom_text_field.dart';
import '../../../../../../component/pop_over.dart';
import '../wallet_sucess_screen/wallet_sucess_screen.dart';

class GetMoneyScreen extends StatefulWidget {
  const GetMoneyScreen({super.key});

  @override
  State<GetMoneyScreen> createState() => _GetMoneyScreenState();
}

class _GetMoneyScreenState extends State<GetMoneyScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextEditingController bottomcontroller = TextEditingController();
    TextEditingController datecontroller = TextEditingController();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.h,
          right: 16.w,
          left: 16.w,
        ),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopBackWithTitle(
                    title: "Get Money ",
                    onPress: () {
                      Get.back();
                    }),
                SizedBox(
                  height: 50.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomPayment(
                          image: Image.asset(
                            width: 80.w,
                            height: 26.h,
                            'assets/images/visa-logo.png',
                        
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomPayment(
                          image: Image.asset(
                            width: 80.w,
                            height: 26.h,
                            'assets/images/idddF4vb-R 1.png',
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomPayment(
                          image: Image.asset(
                            width: 80.w,
                            height: 26.h,
                            'assets/images/Airwallex-Logo-White 1.png',
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomPayment(
                          image: Image.asset(
                            width: 80.w,
                            height: 26.h,
                            'assets/images/PayPal 1.png',
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomPayment(
                          image: Image.asset(
                            width: 80.w,
                            height: 26.h,
                            'assets/images/payoneerMobileLogo 1.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                CommonButton(
                    title: "Balance Withdrawal",
                    onPress: () {
                      editIcon(context, emailController);
                      //  Get.to(WalletSucessesScreen());
                      //       showModalBottomSheet(
                      //           context: context,
                      //           backgroundColor: Colors.black, // Set background color here
                      //           builder: (BuildContext context) {
                      //             return Popover(
                      //               child: Container(
                      //                 color: Colors.black, // This line might need correction
                      //                 height: 200.h,
                      //                 width: width,
                      //                 margin: EdgeInsets.symmetric(horizontal: width),
                      //                 child: Column(
                      //                   children: <Widget>[
                      //                     CustomTextFieldWithImage2(
                      //                       controller: bottomcontroller,
                      //                       hintText: 'Enter Email',
                      //                       labelText: 'Email Address',
                      //                     ),
                      //                     SizedBox(height: 16.h,),
                      //                     CustomTextFieldWithImage2(
                      //                       controller: datecontroller,
                      //                       hintText: 'DD/MM/YY',
                      //                       labelText: 'Date Of birth',
                      //                     ),
                      //                     SizedBox(height: 16.h,),
                      //                     CommonButton(
                      //                       onPress: () {
                      //                         Get.to(WalletSucessesScreen());
                      //                       },
                      //                       title: "Balance Withdrawal",
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             );
                      //           }
                      //       );
                      //
                      //     },
                      //     title: "Balance Withdrawal"),
                      // SizedBox(
                      //   height: 24.h,
                      // ),

                    })],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPayment extends StatelessWidget {
  Image image;
  CustomPayment({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                top: 25.h, left: 16.w, bottom: 24.h, right: 16.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                border: Border.all(color: ConstColor.greyColor.value)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Direct transfer to the debit card",
                  style: desStyle,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          padding:
          EdgeInsets.only(top: 28.h, left: 15.w, bottom: 19.h, right: 15.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(color: ConstColor.greyColor.value)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset("assets/svg_images/solar_add-circle-outline (1).svg"),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Add",
                style: desStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}



Future<void> editIcon(BuildContext context, TextEditingController controller) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: SizedBox(
          height:350,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0,
                    bottom: 50),
                child: Center(child:  Text('Contact Visa',style: desStyleWithWhite.copyWith(
                    fontWeight: FontWeight.w400, color: ConstColor.greyColor.value),)),
              ),

              SimpleCustomTextFieldWithSuffixAssetImage(
                controller: controller,
                hintText: 'EmailAddress',
                labelText: 'EmailAddress',
                image: 'assets/images/edit_icon.png',
              ),

              SizedBox(height: 20,),
              SimpleCustomTextFieldWithSuffixAssetImage(
                controller: controller,
                hintText: 'Date',
                labelText: 'Date',
                image: 'assets/images/icon_date.svg',
              ),
               // Adjust the spacing as needed
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CommonButton(
                        onPress: () {
                          Get.to(()=>const WalletSucessesScreen());
                        },
                        title: 'Balance Withdrawal',
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}