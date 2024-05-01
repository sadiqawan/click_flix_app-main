import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/AppController.dart';
import '../../../../core/constants/const_colors.dart';
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
          padding:  EdgeInsets.only(
            top: height * .052,
            right: width * .056,
            left: width * .056,),
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
                padding: const EdgeInsets.only(bottom: 16.0, top: 24),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: ConstColor.greyColor.value)
                  ),
                  width: Get.width,
                  height: Get.height * 0.056,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                              appController.index.value = index;
                            });
                          },
                          child: TabContainer(
                            width: 150.toDouble(),
                            linerGradient: appController.index == index ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  ConstColor.gradientOneColor.value,
                                  ConstColor.gradientTwoColor.value,
                                ]
                            ) : const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ]
                            ),
                            textColor: appController.index == index
                                ? ConstColor.primaryColor.value
                                : ConstColor.greyColor.value,
                            text: list[index],
                            onPress: () {},
                          ),
                        );
                      }
                  ),
                ),
              ),


              Visibility(
                  visible: appController.index.value == 0 ? true : false,
                  child: Expanded(
                      child: Casting()
                  ),
              ),
              Visibility(
                  visible: appController.index.value == 1 ? true : false,
                  child: Expanded(

                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          height: 300,
                          color: Colors.red,
                        ),
                      ))),



            ],
          ),
        ),
      ),
    );
  }
}



class Casting extends StatefulWidget {
  const Casting({super.key});

  @override
  State<Casting> createState() => _CastingState();
}

class _CastingState extends State<Casting> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 137,
          color: Colors.teal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 115,
                  width: 115,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('i want a professional \n model for my business'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Icon(Icons.add ,),
                        SizedBox(width: 20,),

                        Text('cairo, egypt')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Icon(Icons.add ,),
                        SizedBox(width: 20,),

                        Text('cairo, egypt')
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
          ),
        );
      },
    );
  }
}
