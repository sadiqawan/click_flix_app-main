import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../exploer_screen/exploer_screen.dart';

class notifications_screen extends StatefulWidget {
  const notifications_screen({super.key});

  @override
  State<notifications_screen> createState() => _notifications_screenState();
}

class _notifications_screenState extends State<notifications_screen> {

  List<Map<String, dynamic>> notif_list = [
    {
      'image': 'assets/images/row_image_one.png',
      'name': 'ds psot casting',
      'time': '5 min',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/row_image_two.png',
      'name': 'ds psot casting',
      'time': '5 min',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/row_image_three.png',
      'name': 'ds psot casting',
      'time': '5 min',
      'desc': 'has accepted you for a casting'
    },
    {
      'image': 'assets/images/image_profile.png',
      'name': 'ds psot casting',
      'time': '5 min',
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
          right: width * .00009,
          left: width * .00009,
        ),
        child: Column(
          children: [

            //Appbar
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Get.back(result: ExploerScreen());
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: width * 0.29,
                ),
                Text(
                  "Notification",
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
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
                        title: Row(
                          children: [
                            Text(notif_list[index]['name'],style: GoogleFonts.raleway(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),),
                            SizedBox(
                              width: width*0.02,
                            ),
                            Text(notif_list[index]['time'],style: GoogleFonts.raleway(
                                fontSize: 15,
                                color: Color(0xff848484),
                                fontWeight: FontWeight.w400
                            ),),
                          ],
                        ),
                        subtitle: Text(notif_list[index]['desc'],style: GoogleFonts.raleway(
                          color: Color(0xff848484),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                        ),),
                        trailing: Container(
                          height: height*0.04,
                          width: width*0.06,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/icon_move.png")
                            )
                          ),
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
