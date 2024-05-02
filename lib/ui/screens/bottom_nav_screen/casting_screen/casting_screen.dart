import 'package:click_flex_ui/ui/screens/bottom_nav_screen/casting_screen/casting_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/AppController.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/tabContainer.dart';

class CastingScreen extends StatefulWidget {
  const CastingScreen({super.key});

  @override
  State<CastingScreen> createState() => _CastingScreenState();
}

class _CastingScreenState extends State<CastingScreen> {
  final appController = Get.find<AppController>();

  List<String> list = [
    "Casting",
    "MyCasting",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(
            top: height * .052,
            right: width * .040,
            left: width * .030,
          ),
          child: Column(
            children: [
              //App Bar
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg_images/icon_solor.svg",
                    width: width * .032,
                    height: height * .032,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/svg_images/icon_search.svg",
                    width: width * .032,
                    height: height * .032,
                  ),
                  SizedBox(
                    width: width * .040,
                  ),
                  SvgPicture.asset(
                    "assets/svg_images/icon_notification.svg",
                    width: width * .040,
                    height: height * .032,
                  ),
                ],
              ),

              //Tabs
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 24),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: ConstColor.greyColor.value)),
                  width: Get.width * .87,
                  height: Get.height * 0.056,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              appController.index.value = index;
                            });
                          },
                          child: TabContainer(
                            width: 150.toDouble(),
                            linerGradient: appController.index == index
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
                            textColor: appController.index == index
                                ? ConstColor.primaryColor.value
                                : ConstColor.greyColor.value,
                            text: list[index],
                            onPress: () {},
                          ),
                        );
                      }),
                ),
              ),

              Visibility(
                visible: appController.index.value == 0 ? true : false,
                child: const Expanded(child: Casting()),
              ),
              Visibility(
                  visible: appController.index.value == 1 ? true : false,
                  child: const Expanded(
                      child: MyCasting()),
              )],
          ),
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
    return ListView.builder(
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
            padding: const EdgeInsets.only(left: 10.0, top: 8, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: .5,
                    color: ConstColor.greyColor.value,
                  )),
              height: 150,
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
    );
  }
}







// MyCasting


class MyCasting extends StatefulWidget {
  const MyCasting({super.key});

  @override
  State<MyCasting> createState() => _MyCastingState();
}

class _MyCastingState extends State<MyCasting> {
  AppController appController = Get.put(AppController());
   ConstColor constColor = Get.put(ConstColor());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appController.castingData.length,
      itemBuilder: (BuildContext context, int index) {
        final String image = appController.castingData[index]['image'];
        final String title = appController.castingData[index]['title'];
        final String date = appController.castingData[index]['location'];
        final String location = appController.castingData[index]['date'];
        final String status = appController.castingData[index]['status'];

        return Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 8, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: .5,
                  color: ConstColor.greyColor.value,
                )),
            height: 180,


            child: InkWell(
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
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 5),
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
                              SizedBox(height: 8,),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,left: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.check_box,
                            color: Colors.white,),
                          SizedBox(width: 10,),
                          const Text('Accepted',style:TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


