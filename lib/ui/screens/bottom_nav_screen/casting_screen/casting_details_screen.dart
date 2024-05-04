import 'package:click_flex_ui/ui/screens/bottom_nav_screen/casting_screen/booking_talent_screen.dart';
import 'package:click_flex_ui/ui/screens/bottom_nav_screen/casting_screen/casting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/custom_button.dart';

class CastingDetailScreen extends StatefulWidget {
  String image, title, location, status, date;

  CastingDetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.status,
    required this.date,
  });

  @override
  State<CastingDetailScreen> createState() => _CastingDetailScreenState();
}

class _CastingDetailScreenState extends State<CastingDetailScreen> {
  final controller   =PageController();
  @override
  void initState() {
    super.initState();
    // Show modal bottom sheet when the widget is initialized
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        backgroundColor: Colors.black,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return bottomSheet(context, widget.title, widget.location,
              widget.status, widget.date);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: height * .052,
          right: width * .040,
          left: width * .030,
        ),
        child: Column(
          children: [
            // App Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Casting Details',
                  style: normalStyle,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Container(
              height: height * .3,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.fill),),
              child:  Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const SlideEffect(
                      dotHeight: 13,
                      dotWidth: 13,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.red,
                    ),
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

Widget bottomSheet(BuildContext context, title, location, status, date) {
  return Container(
    width: double.infinity,
    height: 650,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: xMediumStyleInter,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.pin_drop_outlined,
                        color: ConstColor.lightblackColor.value),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      location,
                      style: desStyleWithWhite,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.date_range_outlined,
                        color: ConstColor.lightblackColor.value),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      date,
                      style: desStyleWithWhite,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.currency_exchange,
                        color: ConstColor.lightblackColor.value),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      status,
                      style: desStyleWithWhite,
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: .5,
                  color: ConstColor.greyColor.value,
                )),
            height: 90,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Requirements',style: xMediumStyleInter),
                  Text('This Is Casting All Requirements Or Description\nAbout Casting',style: desStyle),
                ],
              ),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: .5,
                  color: ConstColor.greyColor.value,
                )),
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Preferences',style: xMediumStyleInter),
                  Text('This Is Casting All Requirements Or Description\nAbout Casting',style: desStyle),
                  Text('Gender',style: xMediumStyleInter),
                  Text('Male',style: desStyle),
                  Text('Ethnicity',style: xMediumStyleInter),
                  Text('white/ caucasic /latino / hispanic',style: desStyle),
                  Text('Age',style: xMediumStyleInter),
                  Text('From 20 Years',style: desStyle),
                  Text('Height',style: xMediumStyleInter),
                  Text('from 172 cm',style: desStyle),


                ],
              ),
            ),
          ),
          SizedBox(height: 7,),
          CommonButton(onPress: (){
            Get.to(()=> const BookingTalentScreen());
          }, title: 'Apply Now',)



        ],
      ),
    ),
  );
}
