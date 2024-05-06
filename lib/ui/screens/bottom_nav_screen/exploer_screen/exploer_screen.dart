import 'package:carousel_slider/carousel_slider.dart';
import 'package:click_flex_ui/controller/AppController.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../component/custom_text_field.dart';
import '../../notification_screen/notification_screen.dart';
import '../../search_screen/search_screen.dart';
import '../../story_screen/story_screen.dart';
import '../camera_and_gallery_screen/camera_gallery_screen.dart';

class ExploerScreen extends StatefulWidget {
  const ExploerScreen({super.key});

  @override
  State<ExploerScreen> createState() => _ExploerScreenState();
}

class _ExploerScreenState extends State<ExploerScreen> {
  List<Map<String, dynamic>> rowData = [
    {'image': 'assets/images/row_image_one.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_two.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_three.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_four.png', 'name': 'Ahmad'},
  ];

  List data = [
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_two.png",
  ];
  final appController=Get.find<AppController>();
  final controler = PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/bg_image.png",
                      ))),
              child: Padding(
                padding: EdgeInsets.only(top: height * .032),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * .056,
                        left: width * .056,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                Get.to(camera_gallery_screen());
              },
                            child: SvgPicture.asset(
                              "assets/svg_images/icon_solor.svg",
                              width: width * .032,
                              height: height * .032,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              print("Towards search screen");
                              Get.to(search_screen());
                            },
                            child: SvgPicture.asset(
                              "assets/svg_images/icon_search.svg",
                              width: width * .032,
                              height: height * .032,
                            ),
                          ),
                          SizedBox(
                            width: width * .040,
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(NotificationScreen());
                            },
                            child: SvgPicture.asset(
                              "assets/svg_images/icon_notification.svg",
                              width: width * .040,
                              height: height * .032,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * .056,
                        left: width * .056,
                        top: height * .016,
                        bottom: height * .016,
                      ),
                      child: SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: height * .100,
                                  width: width * .190,
                                ),
                                Container(
                                  height: height * .095,
                                  width: width * .170,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image_profile.png'),
                                      )),
                                ),
                                Positioned(
                                  bottom: 7,
                                  right: -3,
                                  child: Container(
                                    height: height * .030,
                                    width: width * .10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ConstColor.blueColor.value,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: SvgPicture.asset(
                                        "assets/svg_images/icon_add.svg",
                                        height: 10,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // color: Colors.red,
                              height: 100.h,
                           width:270.w,
                              child: ListView.builder(
                                  itemCount: rowData.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: (){
                                      print("showing the story");
                                      Get.to(story_screen());
                                    },child: Container(
                                              height: 70.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 2,
                                                      color: Colors.red),
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        rowData[index]['image']),
                                                  )),
                                            ),
            
                                          ),
                                          // const SizedBox(
                                          //   height: 4,
                                          // ),
                                          Text(
                                            rowData[index]['name'],
                                            style: desStyle.copyWith(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
            
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 160,
                        child: PageView(
                            controller: controler,
            
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/bg_banner.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, top: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'How To Become A Model ?',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Ever Thought Tbout Modeling\nBecome B Model Now!',
                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 90,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            'Learn More',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Center(child: SmoothPageIndicator(
                                        controller: controler, count: 3,
                                        effect: const SlideEffect(
                                          dotHeight: 8,
                                          dotWidth: 8,
                                          dotColor: Colors.grey,
                                          activeDotColor: Colors.white,
                                        ),),
            
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/bn.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, top: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'How To Become A Model ?',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Ever Thought Tbout Modeling\nBecome B Model Now!',
                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 90,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            'Learn More',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Center(child: SmoothPageIndicator(
                                        controller: controler, count: 3,
                                        effect: const SlideEffect(
                                          dotHeight: 8,
                                          dotWidth: 8,
                                          dotColor: Colors.grey,
                                          activeDotColor: Colors.white,
                                        ),),
            
                                      )
                                    ],
                                  ),
                                ),
                              ), Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/bn.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0, top: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'How To Become A Model ?',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Ever Thought Tbout Modeling\nBecome B Model Now!',
                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 90,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            'Learn More',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Center(child: SmoothPageIndicator(
                                        controller: controler, count: 3,
                                        effect: const SlideEffect(
                                          dotHeight: 8,
                                          dotWidth: 8,
                                          dotColor: Colors.grey,
                                          activeDotColor: Colors.white,
                                        ),),
            
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
            
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * .056,
                        left: width * .056,
                        top: height * .016,
            
                      ),
                      child: Divider(
                        thickness: .4,
                        color: ConstColor.greyColor.value,
                      ),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: SizedBox(
                              width: width,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * .056,
                                        left: width * .056,
                                        bottom: height * .016),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * .065,
                                          width: width * .100,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/image_profile.png"),
                                              )),
                                        ),
                                        SizedBox(
                                          width: width * .024,
                                        ),
                                        Text(
                                          "Ahmad",
                                          style: mediumStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Spacer(),
                                        SvgPicture.asset(
                                          "assets/svg_images/icon_menu.svg",
                                          width: width * .040,
                                          height: height * .032,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(data[index]),
                                  SizedBox(
                                    height: height * .024,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * .056,
                                      left: width * .056,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap:(){
                                            setState((){
                                              appController.isFav.value=!appController.isFav.value;
                                  });
                                  },
                                          child: SvgPicture.asset(
                                            appController.isFav.value==true?
                                            "assets/svg_images/icon_fav_active.svg":
                                            "assets/svg_images/icon_fav_unactive.svg",
                                            width: 22,
                                            height: 20,
                                          ),
                                        ),

                                        SizedBox(
                                          width: width * .040,
                                        ),
                                        SvgPicture.asset(
                                          "assets/svg_images/icon_comment.svg",
                                          width: 22,
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .008,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * .056,
                                      left: width * .056,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "100",
                                          style: desStyle.copyWith(
                                              color:
                                              ConstColor.primaryColor.value),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Like",
                                          style: desStyle.copyWith(
                                              color:
                                              ConstColor.primaryColor.value),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * .056,
                                      left: width * .056,
                                    ),
                                    child: Text(
                                      "Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more ",
                                      style: desStyle.copyWith(
                                          color: ConstColor.primaryColor.value),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .008,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * .056,
                                      left: width * .056,
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "View all 16 comments",
                                          style: desStyle.copyWith(),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: width * .056,
                                      left: width * .056,
                                    ),
                                    child: CommentsTextFieldWithImage2(
                                      imageOne: Icon(
                                        Icons.favorite,
                                        color: ConstColor.redColor.value,
                                      ),
                                      imageTwo: Icon(
                                        Icons.front_hand_rounded,
                                        color: ConstColor.yellowColor.value,
                                      ),
                                      imageThree: Icon(
                                        Icons.add_circle_outline_sharp,
                                        color: ConstColor.greyColor.value,
                                      ),
                                      controller: commentsController,
                                      hintText: "Add a Comments...",
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}



final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
class VerticalSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
          items: [
            Container(
              color: Colors.red,
              // child: Image.asset("name"),
            ), Container(
              color: Colors.red,
            ), Container(
              color: Colors.red,
            )

          ],
        ));

  }
}