import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';


import '../../../component/back_button.dart';
import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';
import '../new_pass_screen/new_pass_screen.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final emailController =TextEditingController();
    final passController =TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width:width ,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage("assets/images/bg_image.png"),
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0,right:16,top: 72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                CustomBackButton(onPress: () {
                  Get.back();
                },),
                SizedBox(height: height*.060,),
                Text("Forget Password !",style: mediumStyle.copyWith(fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Enter Your Email To Recover Your Account",style: desStyle,),
                ),

                SizedBox(height: 32,),

                CustomTextFieldWithImage2(
                  labelText: "Email Address",
                  controller: emailController,
                  hintText: 'Email',),
                SizedBox(height: 8,),

                const SizedBox(height: 24,),
                CommonButton(onPress: (){
                  Get.to(const NewPassScreen());
                }, title: "Reset Your Password"),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
