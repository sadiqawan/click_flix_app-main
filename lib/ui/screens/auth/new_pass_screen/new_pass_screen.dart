 import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/core/constants/const_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

import '../../../component/custom_button.dart';
import '../../../component/custom_text_field.dart';


class NewPassScreen extends StatefulWidget {
  const NewPassScreen({super.key});

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final newPassController =TextEditingController();
    final confirmController =TextEditingController();
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
            padding:   EdgeInsets.only(left:width*.040,right:width*.040,top: height*.144),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [


                Text("New Password !",style: mediumStyle.copyWith(fontWeight: FontWeight.w600),),
                Padding(
                  padding:   EdgeInsets.only(top: height*.008),
                  child: Text(newPassText,style: desStyle,),
                ),

                SizedBox(height: height*.032,),

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


                SizedBox(height: height*.040,),
                CommonButton(onPress: (){}, title: "Create New Password"),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
