import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/text.dart';
import '../bottom_nav_screen/bottom_nav_screen.dart';

class reel_screen extends StatefulWidget {
  const reel_screen({super.key});

  @override
  State<reel_screen> createState() => _reel_screenState();
}

class _reel_screenState extends State<reel_screen> {
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
        child:
        SingleChildScrollView(
          child: Column(
            children: [
          
              Stack(
                children: [
                  Container(
                    height: height*0.94,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/story_image.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){
                        Get.back(result: const BottomNavScreen());
                      },
                      child: Container(
                        height: height*0.06,
                        width: width*0.13,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(image: AssetImage('assets/images/icon_back.png'))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height *0.64),
                    child: Container(
                      height: height*0.3,
                      width: double.infinity,
                     // color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.only(left: width*0.05),
                        child: Column(
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
                            SizedBox(
                              height: height*0.02,
                            ),
                            Row(
                              children: [
                                text(
                                    data: "Lorem this is the lorem ttile of the reel is \nrelling",
                                    f_size: 15,
                                    color: Colors.white,
                                    f_weight: FontWeight.w500),
                              ],
                            ),
                            SizedBox(
                              height: height*0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: "Lorem this is the lorem ttile of the reel",
                                    f_size: 13,
                                    color: Colors.white,
                                    f_weight: FontWeight.w300),
                              ],
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: const DecorationImage(
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
          
                              ],
                            ),
                            SizedBox(
                              height: height*0.02,
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
                                      const Icon(Icons.more_horiz,color: Colors.white,),
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
                                  height: height * 0.04,
                                  width: width * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/story_heart_icon.png'),
                                          fit: BoxFit.contain)),
                                ),
                                SizedBox(
                                  width: width*0.05,
                                ),
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/row_image_two.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
            ],
          ),
        ),
      )
    );
  }
}
