import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../controller/AppController.dart';
import '../../../../../core/constants/const_colors.dart';
import '../../../../component/tabContainer.dart';
import '../../../../component/text.dart';
import '../setting_screen.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({super.key});

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  List<String> list = [
    "Posts",
    "Reels",
    "Storys",
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
            body: LayoutBuilder(
              builder: (context, constraints) {
                double height = constraints.maxHeight;
                double width = constraints.maxWidth;

                return Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: height * 0.4,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile_blur.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.316,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xffA513B8), Color(0xffEA3B12)],
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/image_profile.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.1,
                      right: width * 0.85,
                      child: InkWell(
                        onTap: () {
                          Get.back(result: const SettingScreen());
                        },
                        child: const Image(
                            image: AssetImage(
                                "assets/images/move back image.png")),
                      ),
                    ),
                    Positioned(
                      top: height * 0.1,
                      left: width * 0.85,
                      child: const Image(
                          image: AssetImage("assets/images/share image.png")),
                    ),
                    Positioned(
                      top: height * 0.4, // Adjust the position as needed
                      child: Container(
                          height: height * 0.6,
                          width: width * 0.99,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.09,
                              ),
                              text(
                                data: 'User Name',
                                color: Colors.white,
                                f_size: 18,
                                f_weight: FontWeight.w700,
                              ),
                              text(
                                  data: 'Islamabad, Pakistan',
                                  f_size: 15,
                                  color: const Color(0xff848484),
                                  f_weight: FontWeight.w500),
                              SizedBox(
                                height: height * 0.04,
                              ),
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
                                    height: 47,
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
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 16.0, top: 24),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                          color: ConstColor.greyColor.value)),
                                  width: Get.width * 0.79,
                                  height: Get.height * 0.056,
                                  child: ListView.builder(
                                      physics: const ScrollPhysics(),
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
                                            linerGradient: appController
                                                        .index ==
                                                    index
                                                ? LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    colors: [
                                                        ConstColor
                                                            .gradientOneColor
                                                            .value,
                                                        ConstColor
                                                            .gradientTwoColor
                                                            .value,
                                                      ])
                                                : const LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    colors: [
                                                        Colors.transparent,
                                                        Colors.transparent,
                                                      ]),
                                            textColor: appController.index ==
                                                    index
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
                                  visible: appController.index.value == 0
                                      ? true
                                      : false,
                                  child: const Expanded(child: ModelScreen())),
                              Visibility(
                                  visible: appController.index.value == 1
                                      ? true
                                      : false,
                                  child: Expanded(
                                      child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 16.0),
                                    child: Container(
                                      height: 300,
                                      color: Colors.yellow,
                                    ),
                                  ))),
                              Visibility(
                                  visible: appController.index.value == 2
                                      ? true
                                      : false,
                                  child: Expanded(
                                      child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 16.0),
                                    child: Container(
                                      height: 300,
                                      color: Colors.red,
                                    ),
                                  ))),
                            ],
                          )),
                    ),
                  ],
                );
              },
            )),
      );
  }
}

class ModelScreen extends StatefulWidget {
  const ModelScreen({super.key});

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  final appController = Get.find<AppController>();

  List data = [
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_two.png",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        mainAxisExtent: 256, // Adjust the height of each item here
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final image = appController.modelsData[index]['image'];
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        );
      },
    );
  }
}
