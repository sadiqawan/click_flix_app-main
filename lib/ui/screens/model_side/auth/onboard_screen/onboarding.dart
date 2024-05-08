import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg_image.png")
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0,bottom: 32),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  children:  [
                    const ImageSlider(
                      title: 'Create Yor Profile',
                      image: 'assets/images/image_one.png',
                      subtitle:
                      'add your best photos, details, and  instagram to showcase yourself and get scouted by brands, photographers and agencies',
                    ),
                    ImageSlider(
                      title: 'Apply To Casting Offer',
                      image: 'assets/images/image_two.png',
                      subtitle:
                      'browse hundreds of new jobs every day, apply to as many as you want  and start earning money with your looks',
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:200,
                              height:200,
                              child: Image.asset("assets/images/image_three.png"),),

                          Text(
                            "Connect With Brands",
                            style: const TextStyle(
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
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const SlideEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
          ),
        ),
      ),
    );

  }
}

