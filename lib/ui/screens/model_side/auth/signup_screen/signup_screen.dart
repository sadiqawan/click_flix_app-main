import 'package:click_flex_ui/controller/AppController.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import '../../../../../core/constants/const_text.dart';
import '../../../../component/custom_button.dart';
import '../../../../component/custom_text_field.dart';
import '../../../../component/rounnd_button.dart';
import '../login_screen/login_screen.dart';
import '../verify_screen/verify_code.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final appController =Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final emailController = TextEditingController();
    final passController = TextEditingController();
    return Obx(() => SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg_image.png"),
                )),
            child: Padding(
              padding:   EdgeInsets.only(left:width*.040,right:width*.040, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create An Account",
                    style: mediumStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top:height*.008),
                    child: Text(
                      signupDesText,
                      style: desStyle,
                    ),
                  ),
                  SizedBox(
                    height: height*.032,
                  ),
                  CustomTextFieldWithImage2(
                    labelText: "Email Address",
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: height*.008,
                  ),
                  CustomTextFieldWithImage2(
                    image: SvgPicture.asset(
                      "assets/svg_images/icon_password.svg",
                    ),
                    labelText: "Password",
                    controller: passController,
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: height*.016,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4), // Adjust the radius according to your preference
                            ),
                           ),
                        ),
                        child: Checkbox(

                          activeColor: ConstColor.gradientTwoColor.value,
                            value: appController.isChecked.value,
                            onChanged: (value){
                          setState(() {
                            appController.isChecked.value=value! ;

                          });
                        }),
                      ),
                      Text(
                        "Agree With",
                        style: desStyle.copyWith(color: ConstColor.primaryColor.value),
                      ),
                      Text(
                        " Terms & condition",
                        style: desStyle.copyWith(
                            color: ConstColor.blueColor.value,decoration: TextDecoration.underline,decorationColor: ConstColor.blueColor.value),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.040,
                  ),
                  CommonButton(onPress: () {
                    Get.to(VerifyPasswordScreen());
                  }, title: "Sign Up"),

                  Padding(
                    padding:   EdgeInsets.symmetric(vertical: height*.040),
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
                          width: width*.024,
                        ),
                        Text(
                          "Or Sign Up With",
                          style: desStyle,
                        ),
                        SizedBox(
                          width: width*.024,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/apple.svg"),
                      ),
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/face_book.svg"),
                      ),
                      RoundButton(
                        image: SvgPicture.asset("assets/svg_images/google.svg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.060,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t Have An Account ?",
                        style: normalStyle.copyWith(fontSize: 14),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(const LoginScreen());
                          },
                        child: Text(
                          "Login",
                          style: desStyle.copyWith(
                              color: ConstColor.blueColor.value, ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
