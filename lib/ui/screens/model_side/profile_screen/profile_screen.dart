
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/AppController.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../../core/constants/const_text.dart';
import '../../../component/tabContainer.dart';
import '../../../component/text.dart';
import '../bottom_nav_screen/casting_screen/casting_details_screen.dart';
import '../bottom_nav_screen/setting_screen/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> list = [
    "About",
    "MyCasting",
  ];

  final appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
            Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height:250.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_blur_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 32.h,
                child: Container(
                  width: width,

                  child:   Padding(
                    padding:   EdgeInsets.only(left: 16.w,right: 16.w,top: 24.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back(result:   const SettingScreen());
                              },
                              child:   SvgPicture.asset("assets/svg_images/icon_back.svg"),
                            ),
                            SvgPicture.asset(
                              "assets/svg_images/icon_solor.svg",
                              width: width * .032,
                              height: height * .032,
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 90.h),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 60,
                            backgroundImage:
                            AssetImage('assets/images/image_profile.png'),
                          ),
                        ),

                        Text("mfsdfdssf agency",style: mediumStyle,),

                        SizedBox(height: 8.h,),
                        Text("agency / cairo, egypt ",style: desStyle,),
                        SizedBox(height: 16.h,),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                text(
                                    data: '765',
                                    f_size: 18,
                                    color: Colors.white,
                                    f_weight: FontWeight.w500),
                                text(
                                    data: 'Likes',
                                    f_size: 18,
                                    color: const Color(0xff333333),
                                    f_weight: FontWeight.w600),
                              ],
                            ),
                            Container(
                              height: 32.h,
                              width: 1.2,
                              color: const Color(0xff333333),
                            ),
                            Column(
                              children: [
                                text(
                                    data: '123',
                                    f_size: 18,
                                    color: Colors.white,
                                    f_weight: FontWeight.w500),
                                text(
                                    data: 'Photo',
                                    f_size: 18,
                                    color: const Color(0xff333333),
                                    f_weight: FontWeight.w600),
                              ],
                            )
                          ],
                        ),


                        Padding(
                          padding:   EdgeInsets.only(top: 16.h),
                          child: SizedBox(
                            height: 500.h,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(color: ConstColor.greyColor.value)),
                                  width:width,
                                  height: 48.h,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: list.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              appController.indexAbout.value = index;
                                            });
                                          },
                                          child: TabContainer(
                                            width: 185.toDouble(),
                                            linerGradient: appController.indexAbout.value == index
                                                ? LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.topRight,
                                                colors: [
                                                  ConstColor.gradientOneColor.value,
                                                  ConstColor.gradientTwoColor.value,
                                                ])
                                                : const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.topRight,
                                                colors: [
                                                  Colors.transparent,
                                                  Colors.transparent,
                                                ]),
                                            textColor: appController.indexAbout.value == index
                                                ? ConstColor.primaryColor.value
                                                : ConstColor.greyColor.value,
                                            text: list[index],
                                            onPress: () {
                                              setState(() {
                                                appController.indexAbout.value= index;
                                              });
                                            },
                                          ),
                                        );
                                      }),
                                ),

                                Visibility(
                                  visible: appController.indexAbout.value == 0 ? true : false,
                                  child: const AboutData(),
                                ),
                                Visibility(
                                  visible: appController.indexAbout.value == 1 ? true : false,
                                  child:const Casting(),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                ),
              ),

            ],
          ),
            ],
          )),
    );
  }
}



// About


class AboutData extends StatefulWidget {
  const AboutData({super.key});

  @override
  State<AboutData> createState() => _AboutDataState();
}

class _AboutDataState extends State<AboutData> {
  AppController appController = Get.put(AppController());
  ConstColor constColor = Get.put(ConstColor());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding:   EdgeInsets.only(top: 16.h),
              child: Container(
                padding: EdgeInsets.only(top: 16.h,left: 16.w,right: 16.h,bottom: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    border: Border.all(color: ConstColor.greyColor.value.withOpacity(.5))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                        child: Text("About",style: mediumStyle,)),
                    SizedBox(height: 16.h,),
                    Text(aboutText,style: desStyle,)
            
                  ],
                ),
              ),
            ),
            Padding(
              padding:   EdgeInsets.only(top: 16.h),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 16.h,left: 16.w,right: 16.h,bottom: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    border: Border.all(color: ConstColor.greyColor.value.withOpacity(.5))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Detail",style: mediumStyle,),
                    SizedBox(height: 16.h,),
                    Text("Location",style: normalStyle,),
                    SizedBox(height: 4.h,),
                    Text("cairo, egypt",style: desStyle,),
                    SizedBox(height: 16.h,),
                    Text("Joining Detail",style: normalStyle,),
                    SizedBox(height: 4.h,),
                    Text("cairo, egypt",style: desStyle,),
                    SizedBox(height: 16.h,),
                    Text("Website ",style: normalStyle,),
                    SizedBox(height: 4.h,),
                    Text("www.mfsdfdssf agency.com",style: normalStyle.copyWith(color: ConstColor.blueColor.value),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Casting
class Casting extends StatefulWidget {
  const Casting({super.key});

  @override
  State<Casting> createState() => _CastingState();
}

class _CastingState extends State<Casting> {
  AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: appController.castingData.length,
        itemBuilder: (BuildContext context, int index) {
          final String image = appController.castingData[index]['image'];
          final String title = appController.castingData[index]['title'];
          final String date = appController.castingData[index]['date'];
          final String location = appController.castingData[index]['location'];
          final String status = appController.castingData[index]['status'];
          return InkWell(
            onTap: (){
              Get.to(()=> CastingDetailScreen(
                image: appController.castingData[index]['image'],
                title: appController.castingData[index]['title'],
                location: appController.castingData[index]['location'],
                status: appController.castingData[index]['status'],
                date: appController.castingData[index]['date'],
              ));
            },
            child: Padding(
              padding:   EdgeInsets.only(left: 10.w, top: 8.h, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: .5,
                      color: ConstColor.greyColor.value,
                    )),
                height: 150.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        height: 115,
                        width: 115,
                        // color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: Text(title,style: normalStyle,),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                  Icons.pin_drop_outlined,
                                  color: ConstColor.lightblackColor.value
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(location,style: desStyleWithWhite,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                  Icons.date_range_outlined,
                                  color: ConstColor.lightblackColor.value
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(date,style: desStyleWithWhite,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                  Icons.currency_exchange,
                                  color: ConstColor.lightblackColor.value
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(status,style: desStyleWithWhite,)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

