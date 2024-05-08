import 'package:click_flex_ui/core/constants/const_colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/const_style.dart';
import '../screens/model_side/auth/user_selection_screen/user_selection_screen.dart';
import 'custom_button.dart';


class ImageSlider extends StatelessWidget {
  final String title, subtitle;
  final String image;


  const ImageSlider({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(image,width: 200,height: 200,),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style:desStyle,
          ),
          const SizedBox(height: 100),

        ],
      ),
    );
  }
}



class LastPage extends StatelessWidget {

    LastPage({
    Key? key,


  }) : super(key: key);

  final controller = PageController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg_image.png")
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset("assets/images/image_three.png",
                width: 200,height: 200,),
            ),
            Text(
              "Connect With Brands",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32.0),
              child: Text(
                "Talk, Message & Collaborate Directly With Photographers, Agencies, And  Brands That You Like.",
                textAlign: TextAlign.center,
                style:desStyle,
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ConstColor.greyColor.value,
                    shape: BoxShape.circle
                  ),
                  width: 8,
                  height: 8,
                ),
                SizedBox(width: 4,),
                Container(
                  decoration: BoxDecoration(
                    color: ConstColor.greyColor.value,
                    shape: BoxShape.circle
                  ),
                  width: 8,
                  height:8,
                ),
                SizedBox(width: 4,),
                Container(
                  decoration: BoxDecoration(
                    color: ConstColor.primaryColor.value,
                    shape: BoxShape.circle
                  ),
                  width: 8,
                  height: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CommonButton(onPress: (){
                Get.to(const UserSelectionScreen());
              }, title: "I Am A Model"),
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: (){
                Get.to(const UserSelectionScreen());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,

                  decoration:   BoxDecoration(

                    border: Border.all(
                      style: BorderStyle.solid,
                        color: ConstColor.gradientTwoColor.value),
                    borderRadius: BorderRadius.circular(16),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text("Looking For a Model",style: mediumStyle.copyWith(color: ConstColor.primaryColor.value,fontSize: 14),),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}