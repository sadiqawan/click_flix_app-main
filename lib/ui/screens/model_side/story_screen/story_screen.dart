import 'package:click_flex_ui/ui/component/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom_nav_screen/exploer_screen/exploer_screen.dart';

class story_screen extends StatefulWidget {
  const story_screen({super.key});

  @override
  State<story_screen> createState() => _story_screenState();
}

class _story_screenState extends State<story_screen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: height * .052,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.78,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.78,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/story_image.png'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      height: height * 0.08,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: height * 0.002,
                                  width: width * 0.1,
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/story_user_image.png'),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                text(
                                    data: "Mohamed",
                                    f_size: 13,
                                    color: Colors.white,
                                    f_weight: FontWeight.w500),
                                Container(
                                  height: height * 0.02,
                                  width: width * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/story_Verified badge.png'),
                                          fit: BoxFit.contain)),
                                ),
                                SizedBox(
                                  width: width * 0.5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Get.back(result: ExploerScreen());
                                  },
                                  child: Container(
                                    height: height * 0.034,
                                    width: width * 0.08,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/story_close_icon.png'),
                                            fit: BoxFit.contain)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.15,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        text(
                            data: "63482 views",
                            f_size: 15,
                            color: Colors.white,
                            f_weight: FontWeight.w500),
                        SizedBox(
                          width: width*0.05,
                        ),
                        text(
                            data: "375 comments",
                            f_size: 15,
                            color: Colors.white,
                            f_weight: FontWeight.w500),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: height*0.06,
                          width: width*0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white
                            )
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width*0.05,
                              ),
                              Expanded(
                                child: TextField(
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                    hintText: "Comment",
                                    hintStyle: GoogleFonts.raleway(
                                      color: Colors.white
                                    )
                                  ),
                                ),
                              ),
                              Icon(Icons.more_horiz,color: Colors.white,),
                              SizedBox(
                                width: width*0.02,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width*0.05,
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/story_heart_icon.png'),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          width: width*0.05,
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/row_image_two.png'),
                                  fit: BoxFit.contain)),
                        ),
                      ],
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
