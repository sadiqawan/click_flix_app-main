import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/constants/const_colors.dart';
import '../../../../component/image_slider.dart';
import '../user_selection_screen/user_selection_screen.dart';



// Import the intro_slider package

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final controller = PageController();

  @override
  void initState() {
    controller;
    super.initState();
  }
  @override
  void dispose() {
    controller;
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/onboarding_screen_background_image.png")
            )
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: 40.0.h,bottom: 32.h),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  children: const [
                     ImageSlider(
                      title: 'Create Your Profile',
                      image: 'assets/images/image_one.png',
                      subtitle:
                      'Add Your Best Photos, Details, And  Instagram To ShowCase Yourself And Get Scouted By Brands, Photographers And Agencies',
                    ),
                     ImageSlider(
                      title: 'Apply To Casting Offer',
                      image: 'assets/images/image_two.png',
                      subtitle:
                      'Browse Hundreds Of New Jobs Every Day, Apply To As Many As You Want And Start Earning Money With Your Looks',
                    ),
                      ImageSlider(
                      title: 'Connect With Brands',
                      image: 'assets/images/image_three.png',
                      subtitle:
                      'Talk, Message & Collaborate Directly With Photographers, Agencies, And  Brands That You Like.',
                    ),
                  /*  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:200,
                            height:200,
                            child: Image.asset("assets/images/image_three.png"),),
                        const Text(
                          "Connect With Brands",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(

                          "Talk, Message & Collaborate Directly With Photographers, Agencies, And  Brands That You Like.",
                          textAlign: TextAlign.center,
                          style:desStyle,
                        ),
                      ],
                    ),*/

                  ],
                ),
              ),

              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 190.0.h),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const SlideEffect(
                        dotHeight: 7,
                        dotWidth: 6,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0,left: 10,right: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(UserSelectionScreen());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:   Center(
                              child: Text('Skip', style:normalStyle),
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut).then((value) {
                                Get.to(LastPage());
                              });
                            },
                            child: Container(
                              height: 56,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient:   LinearGradient(
                                    begin:Alignment.topLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      ConstColor.gradientOneColor.value,
                                      ConstColor.gradientTwoColor.value,
                                    ]
                                ),
                              ),
                              child:   Center(
                                child: Text('Next', style: normalStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )

             ,
            ],
          ),
        ),
      ),
    );

  }
}

