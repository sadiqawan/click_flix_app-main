import 'package:click_flex_ui/ui/component/custom_button.dart';
import 'package:click_flex_ui/ui/screens/bottom_nav_screen/setting_screen/wallet_screen/wallet_sucess_screen/wallet_sucess_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../controller/AppController.dart';
import '../../../../../core/constants/const_colors.dart';
import '../../../../../core/constants/const_style.dart';
import '../../../../component/custom_radioListTile.dart';
import 'get_money_screen/get_money_screen.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.h,
          right:16.w,
          left: 16.w,
        ),
        child: Scaffold(
            backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Wallet',
                    style: normalStyle,
                  ),
                  const SizedBox()
                ],
              ),
              Container(
                height: 100,
                width: width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        ConstColor.gradientOneColor.value.withOpacity(.1),
                        ConstColor.gradientTwoColor.value.withOpacity(.1),
      
                      ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GradientText(
                          'Good Job',
                          style:headingStyle,
                          colors: [
                            ConstColor.gradientOneColor.value,
                            ConstColor.gradientTwoColor.value,
                          ],
                        ),
                        Text(
                          'Current Balance',
                          style: desStyle,
                        )
                      ],
                    ),
                    Text(
                      '257\$',
                      style: headingStyle,
                    )
                  ],
                ),
              ),

              SizedBox(height: 24.h,),
              
              Align(
                alignment: Alignment.centerLeft,
      
                  child: Text('Withdrawing Methods ',style: headingStyle.copyWith(fontSize: 16.sp),)),

              SizedBox(height: 32.h,),
              CustomRadioListTile(title: 'Direct Transfer To', image: 'assets/images/applePay_icon.png'),
              SizedBox(height: 24.h,),
              CustomRadioListTile(title: 'Direct Transfer To', image: 'assets/images/applePay_icon.png'),
              SizedBox(height: 16.h,),
              CustomRadioListTile(title: 'Direct Transfer To', image: 'assets/images/applePay_icon.png'),

              SizedBox(height: 16.h,),
              Container(
                width: width,
                height: 56.h,
                decoration: BoxDecoration(
                    border:   GradientBoxBorder(
                      gradient: LinearGradient(colors: [
                     ConstColor.gradientOneColor.value,
                     ConstColor.gradientOneColor.value,
                      ]),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SvgPicture.asset("assets/svg_images/solar_add-square-outline (1).svg"),

                    Text("Add new withdrawal method",style: mediumStyle.copyWith(fontSize: 16.sp),),
                  ],
                ),
              ),
              SizedBox(height: 174.h,),

              CommonButton(onPress: (){

                Get.to(GetMoneyScreen());

              }, title: "Balance Withdrawal ")
            ],
          ),
        ),
      ),
    );

  }
}
