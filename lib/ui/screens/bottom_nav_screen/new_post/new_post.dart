import 'package:click_flex_ui/ui/component/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models_screen/models_screen.dart';

class new_post extends StatefulWidget {
  const new_post({super.key});

  @override
  State<new_post> createState() => _new_postState();
}

class _new_postState extends State<new_post> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
          top: height * .032,
          right: width * .056,
          left: width * .056,),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                    },
                    child: InkWell(
                      onTap: (){
                        Get.back(result: ModelsScreen());
                      },
                      child: SvgPicture.asset(
                        "assets/svg_images/icon_back.svg",
                        width: width * .022,
                        height: height * .022,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.26,
                  ),
                  text(data: "New Post", f_size: 20, color: Colors.white, f_weight: FontWeight.w600)
                ]
              ),
              SizedBox(
                height: height*0.05,
              ),
              Container(
                height: height*0.5,
                width: double.infinity,
               decoration: BoxDecoration(
                 //color: Colors.white,
                 image: DecorationImage(image: AssetImage('assets/images/new_post.png')),
                 borderRadius: BorderRadius.circular(16)
               ),
              ),
              SizedBox(
                height: height*0.04,
              ),
              Container(
                height: height*0.18,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white.withOpacity(0.15))
                ),
                child:Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    cursorColor: Colors.white,
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write a caption on the post or description",
                        hintStyle: GoogleFonts.raleway(
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 16,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height*0.04,
              ),
              Container(
                height: height*0.08,
                width: width*0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffA513B8),
                      Color(0xffEA3B12)
                    ]
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: text(data: "Share", f_size: 20, color: Colors.white, f_weight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
