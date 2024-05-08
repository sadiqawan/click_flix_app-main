import 'package:click_flex_ui/ui/component/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom_nav_screen/exploer_screen/exploer_screen.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {


  List<Map<String, dynamic>> notif_list = [
    {
      'image': 'assets/images/row_image_one.png',
      'name': 'ds psot casting',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/row_image_two.png',
      'name': 'ds psot casting',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/row_image_three.png',
      'name': 'ds psot casting',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/image_profile.png',
      'name': 'ds psot casting',
      'desc': 'has accepted you for a casting'
    },
  ];

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
                      Get.back(result: ExploerScreen());
      }, child: SvgPicture.asset(
                      "assets/svg_images/icon_back.svg",
                      width: width * .022,
                      height: height * .022,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){

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
            SizedBox(
              height: height*0.02,
            ),
            Container(
              height: height*0.07,
              width: width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.2)
                  )
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width*0.05,
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/search_icon.png'),
                            fit: BoxFit.contain)),
                  ),
                  SizedBox(
                    width: width*0.05,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Here",
                          hintStyle: GoogleFonts.raleway(
                              color: Colors.white,
                            fontSize: 18,
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.02,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.04,
            ),
            Padding(
              padding:  EdgeInsets.only( right: width * .056,
                left: width * .056,),
              child: Align(
                alignment: Alignment.bottomLeft,
                  child: text(data: "Search Results", f_size: 18, color: Colors.white, f_weight: FontWeight.w500)),
            ),
            SizedBox(
              height: height*0.02,
            ),

            //List
            Expanded(
              child: ListView.builder(
                itemCount: notif_list.length,
                itemBuilder: (BuildContext context, int index) {
                  print("List count = ${notif_list.length}");
                  return Column(
                    children: [
                      ListTile(
                        leading:  Container(
                          height: height * 0.10,
                          width: width * 0.190,
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(notif_list[index]['image']),fit: BoxFit.contain,
                              )),
                        ),
                        title: Text(notif_list[index]['name'],style: GoogleFonts.raleway(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),),
                        subtitle: Text(notif_list[index]['desc'],style: GoogleFonts.raleway(
                            color: Color(0xff848484),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                        ),),
                        trailing: Container(
                          height: height*0.04,
                          width: width*0.06,
                          child: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.06,right: width*0.09),
                        child: Divider(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ],
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
