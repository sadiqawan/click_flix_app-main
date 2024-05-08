 import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/core/constants/const_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';


class AgencyNewPassScreen extends StatefulWidget {
  const AgencyNewPassScreen({super.key});

  @override
  State<AgencyNewPassScreen> createState() => _AgencyNewPassScreenState();
}

class _AgencyNewPassScreenState extends State<AgencyNewPassScreen> {

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final newPassController =TextEditingController();
    final confirmController =TextEditingController();
    return SafeArea(
      child: Scaffold(
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
              padding:   EdgeInsets.only(left:16.w,right:16.h,top: 106.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
      
                children: [
      
      
                  Text("New Password !",style: mediumStyle.copyWith(fontWeight: FontWeight.w600),),
                  Padding(
                    padding:   EdgeInsets.only(top: height*.008),
                    child: Text(newPassText,style: desStyle,),
                  ),
      
                  SizedBox(height: 50.h,),
      
                  CustomTextFieldWithImage2(
                    image: SvgPicture.asset("assets/svg_images/icon_new_pass.svg"),
                    labelText: "New Password",
                    controller: newPassController,
                    hintText: 'New Password',),
                    SizedBox(height:height*.008,),
                  CustomTextFieldWithImage2(
                    image: SvgPicture.asset("assets/svg_images/icon_password.svg"),
                    labelText: "Confirm Password",
                    controller: confirmController,
                    hintText: 'Cofirm Password',),
      
      
                  SizedBox(height: 32.h,),
                  CommonButton(onPress: (){}, title: "Create New Password"),
      
                ],
              ),
            ),
          ),
        ),
      
      ),
    );
  }
}
