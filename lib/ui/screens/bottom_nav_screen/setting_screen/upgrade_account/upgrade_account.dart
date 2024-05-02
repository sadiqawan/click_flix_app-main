import 'package:carousel_slider/carousel_slider.dart';
import 'package:click_flex_ui/controller/AppController.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/component/custom_button.dart';
import 'package:click_flex_ui/ui/component/top_back_with_title.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UpgradeAccountScreen extends StatefulWidget {
  const UpgradeAccountScreen({super.key});

  @override
  State<UpgradeAccountScreen> createState() => _UpgradeAccountScreenState();
}

class _UpgradeAccountScreenState extends State<UpgradeAccountScreen> {
  final appController = Get.find<AppController>();
  final controler = PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/bg_image.png",
                    ))),
            child: Padding(
              padding: EdgeInsets.only(
                top: height * .032,
                bottom: height * .032,
                right: width * .056,
                left: width * .056,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TopBackWithTitle(
                    title: "Chose Your Plan",
                    onPress: () {
                      Get.back();
                    },
                  ),
                   SizedBox(height: 34,),
                  Container(
                    padding: EdgeInsets.only(top: 12,bottom: 24,left: 16,right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: .5,
                        color: ConstColor.greyColor.value,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Monthly",style: desStyle,),
                            Radio(
                              activeColor: ConstColor.greyColor.value,
                                value: "Option 1", groupValue:appController.isMonthly.value, onChanged: (val){

                                appController.isMonthly.value=val!;
                            }),
                          ],
                        ),
                        Text("AED 70/Month",style: mediumStyleInter,),


                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                           gradient:LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    ConstColor.gradientOneColor.value,
                                    ConstColor.gradientTwoColor.value,

                                  ]),
                            ),
                            child: Text("1 WEEK FREE TRIAL",style: desStyle.copyWith(color: ConstColor.primaryColor.value),),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Get Notified With The Recent Casting and Jobs",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Get Feature on the search",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Unlimited Casting and jobs apply",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                       ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.only(top: 12,bottom: 24,left: 16,right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: .5,
                        color: ConstColor.greyColor.value,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Yearly",style: desStyle,),
                            Radio(
                              activeColor: ConstColor.greyColor.value,
                                value: "Option 2", groupValue:appController.isMonthly.value, onChanged: (val){

                                appController.isMonthly.value=val!;
                            }),
                          ],
                        ),
                        Text("AED 70/Yearly",style: mediumStyleInter,),


                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                           gradient:LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    ConstColor.gradientOneColor.value,
                                    ConstColor.gradientTwoColor.value,

                                  ]),
                            ),
                            child: Text("1 WEEK FREE TRIAL",style: desStyle.copyWith(color: ConstColor.primaryColor.value),),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Get Notified With The Recent Casting and Jobs",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Get Feature on the search",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.check,color: Colors.green,size: 14,),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Unlimited Casting and jobs apply",style: desStyle.copyWith(fontSize: 12,color: ConstColor.primaryColor.value),),
                          ],
                        ),
                       ],
                    ),
                  ),

                  SizedBox(height: 32,),
                  CommonButton(onPress: (){
                    Get.back();
                  }, title: "Subscribe")
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
