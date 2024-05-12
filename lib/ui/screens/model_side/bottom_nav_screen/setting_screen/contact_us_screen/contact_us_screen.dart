import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/component/rounnd_button.dart';
import 'package:click_flex_ui/ui/component/top_back_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../controller/AppController.dart';


class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final appController = Get.find<AppController>();
  final controler = PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstColor.blackColor.value,
        body: Padding(
          padding: EdgeInsets.only(
            top: height * .032,
            bottom: height * .032,
            right: width * .056,
            left: width * .056,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopBackWithTitle(
                title: "Chose Your Plan",
                onPress: () {
                  Get.back();
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0, bottom: 24),
                child: Image.asset('assets/images/icon_contact.png',height: 100,width: 100,),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  border: Border.all(color: Colors.black), // Border color
                  color: ConstColor.lightblackColor.value, // Background color
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/icon_email.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'info@company.com',
                    style: desStyleWithWhite,
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  border: Border.all(color: Colors.black), // Border color
                  color: ConstColor.lightblackColor.value, // Background color
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Icon_call.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    '(123)456-7890',
                    style: desStyleWithWhite,
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  border: Border.all(color: Colors.black), // Border color
                  color: ConstColor.lightblackColor.value, // Background color
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/icon_email.png',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    '123 main street (anytown,USA 12345)',
                    style: desStyleWithWhite,
                  ),
                ),
              ),




              Padding(
                padding: EdgeInsets.symmetric(vertical: height * .040),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: ConstColor.greyColor.value,
                        thickness: .2,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      width: width * .024,
                    ),
                    Text(
                      "Follow Us",
                      style: desStyle,
                    ),
                    SizedBox(
                      width: width * .024,
                    ),
                    Expanded(
                      child: Divider(
                        color: ConstColor.greyColor.value,
                        thickness: .2,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                    image: SvgPicture.asset(
                      "assets/svg_images/Icons_instagram.svg",
                    ),
                  ),
                  RoundButton(
                    image:
                        SvgPicture.asset("assets/svg_images/grey_facebook.svg"),
                  ),
                  RoundButton(
                    image: SvgPicture.asset("assets/svg_images/snapchat.svg"),
                  ),
                  RoundButton(
                    image: SvgPicture.asset("assets/svg_images/tiktok.svg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

