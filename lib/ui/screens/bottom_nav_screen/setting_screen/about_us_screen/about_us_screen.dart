import 'package:click_flex_ui/controller/AppController.dart';
import 'package:click_flex_ui/core/constants/const_colors.dart';
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:click_flex_ui/ui/component/top_back_with_title.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/const_text.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopBackWithTitle(
                title: "Chose Your Plan",
                onPress: () {
                  Get.back();
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 42.0),
                        child: Text(
                          aboutUsOne,
                          style: desStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 42.0),
                        child: Text(
                          "Mission Statement",
                          style: normalStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          aboutUsTwo,
                          style: desStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "Values",
                          style: normalStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: ConstColor.gradientTwoColor.value,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              valueOne,
                              style: desStyle,
                            ),
                          ],
                        ),
                      ),
                      CommonLine(
                        title: valueOne,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: ConstColor.gradientTwoColor.value,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              valueTwo,
                              style: desStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: ConstColor.gradientTwoColor.value,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              valueThree,
                              style: desStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "History",
                          style: normalStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: ConstColor.gradientTwoColor.value,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Text(
                                historyOne,
                                style: desStyle.copyWith(
                                    color: ConstColor.primaryColor.value),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CommonLine(
                        title: historyTwo,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "Products",
                          style: normalStyle,
                        ),
                      ),
                      CommonLine(
                        title: productOne,
                      ),
                      CommonLine(
                        title: productTwo,
                      ),
                      CommonLine(
                        title: productThree,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "Awards",
                          style: normalStyle,
                        ),
                      ),
                      CommonLine(
                        title: awardOne,
                      ),
                      CommonLine(
                        title: awardTwo,
                      ),
                      CommonLine(
                        title: awardThree,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonLine extends StatelessWidget {
  String title;
  CommonLine({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle,
            color: ConstColor.gradientTwoColor.value,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              title,
              style: desStyle,
            ),
          ),
        ],
      ),
    );
  }
}
