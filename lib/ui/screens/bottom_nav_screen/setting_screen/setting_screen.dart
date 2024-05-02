import 'package:click_flex_ui/ui/component/custom_button.dart';
import 'package:click_flex_ui/ui/screens/bottom_nav_screen/setting_screen/upgrade_account/upgrade_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/AppController.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/tabContainer.dart';
import 'about_us_screen/about_us_screen.dart';
import 'contact_us_screen/contact_us_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final appController = Get.find<AppController>();

  List<String> list = [
    "Casting",
    "MyCasting",
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
          right: width * .056,
          left: width * .056,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //App Bar
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svg_images/icon_solor.svg",
                  width: width * .032,
                  height: height * .032,
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/svg_images/icon_search.svg",
                  width: width * .032,
                  height: height * .032,
                ),
                SizedBox(
                  width: width * .040,
                ),
                SvgPicture.asset(
                  "assets/svg_images/icon_notification.svg",
                  width: width * .040,
                  height: height * .032,
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: .5,
                                color: ConstColor.greyColor.value,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 82,
                                width:82,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: Colors.red),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/image_profile.png"),
                                    )),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mohamed Ahmed",
                                    style: desStyle.copyWith(
                                        color: ConstColor.primaryColor.value),
                                  ),
                                  Text(
                                    "Cairo, Egypt",
                                    style: desStyle,
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: ConstColor.greyColor.value,
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0, top: 24.0),
                            child: Text(
                              "App",
                              style: desStyle,
                            ),
                          ),
                      
                          Container(
                            padding: EdgeInsets.all(
                              16,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: .5,
                                  color: ConstColor.greyColor.value,
                                )),
                            child: Column(
                              children: [
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/account_setting.svg"),
                                    title: "Account Setting",
                                    onTap: () {}),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    thickness: .4,
                                    color: ConstColor.greyColor.value,
                                  ),
                                ),
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/my_casting_setting.svg"),
                                    title: "My Casting",
                                    onTap: () {}),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    thickness: .4,
                                    color: ConstColor.greyColor.value,
                                  ),
                                ),
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/upgrade_setting.svg"),
                                    title: "Upgrade Account",
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (_)=>const UpgradeAccountScreen()));
                                       Get.to(const UpgradeAccountScreen());

                                    }),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    thickness: .4,
                                    color: ConstColor.greyColor.value,
                                  ),
                                ),
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/my_wallet.svg"),
                                    title: "My Wallet",
                                    onTap: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0, top: 40.0),
                            child: Text(
                              "Settings",
                              style: desStyle,
                            ),
                          ),
                      
                          Container(
                            padding: EdgeInsets.all(
                              16,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: .5,
                                  color: ConstColor.greyColor.value,
                                )),
                            child: Column(
                              children: [
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/about_setting.svg"),
                                    title: "About Us",
                                    onTap: () {
                                      Get.to(AboutUsScreen());
                                    }),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    thickness: .4,
                                    color: ConstColor.greyColor.value,
                                  ),
                                ),
                                CustomListTile(

                                    image: SvgPicture.asset(
                                        "assets/svg_images/contact_setting.svg"),
                                    title: "Contact Us",
                                    onTap: () {
                                      Get.to(ContactUsScreen());
                                    }),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    thickness: .4,
                                    color: ConstColor.greyColor.value,
                                  ),
                                ),
                                CustomListTile(
                                    image: SvgPicture.asset(
                                        "assets/svg_images/langauge_setting.svg"),
                                    title: "change language",
                                    onTap: () {}),

                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ConstColor.redColor.value.withOpacity(.3))
                          ),
                          alignment: Alignment.center,
                          width: width,
                          height: 56,
                          child: Text(
                            "log out",style: normalStyle.copyWith(color: ConstColor.redColor.value),
                          ),
                        ),
                      ),
                      SizedBox(height: 48,),
                     ],
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

class CustomListTile extends StatelessWidget {
  SvgPicture image;
  String title;
  Function() onTap;
  CustomListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          image,
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              title,
              style: normalStyle,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: ConstColor.greyColor.value,
            size: 20,
          )
        ],
      ),
    );
  }
}
