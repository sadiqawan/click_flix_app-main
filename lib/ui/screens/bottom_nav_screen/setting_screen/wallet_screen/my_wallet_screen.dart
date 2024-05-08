import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/AppController.dart';
import '../../../../../core/constants/const_colors.dart';
import '../../../../../core/constants/const_style.dart';
import '../../../../component/custom_radioListTile.dart';

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

    return Padding(
      padding: EdgeInsets.only(
        top: height * .052,
        right: width * .040,
        left: width * .030,
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
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      ConstColor.gradientOneColor.value.withOpacity(.7),
                      ConstColor.gradientTwoColor.value.withOpacity(.7),

                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Good Job',
                        style: headingStyle,
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
            
            Align(
              alignment: Alignment.centerLeft,

                child: Text('Withdrawing Methods ',style: headingStyle.copyWith(fontSize: 16),)),
            CustomRadioListTile(title: 'title', image: 'assets/images/applePay_icon.png'),
            CustomRadioListTile(title: 'title', image: 'assets/images/applePay_icon.png'),
            CustomRadioListTile(title: 'title', image: 'assets/images/applePay_icon.png')
          ],
        ),
      ),
    );
    //   SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.black,
    //       title: Text(
    //         'Wallet',
    //         style: TextStyle(),
    //       ),
    //     ),
    //     backgroundColor: Colors.black,
    //     body: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Container(
    //               height: 112,
    //               width: 358,
    //               decoration: BoxDecoration(
    //                 gradient: LinearGradient(
    //                   begin: Alignment.topRight,
    //                   end: Alignment.topLeft,
    //                   colors: [
    //                     Colors.pink.withOpacity(0.1),
    //                     Colors.orange.withOpacity(0.1),
    //                   ],
    //                 ),
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                 children: [
    //                   Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Text(
    //                         'Good Job',
    //                         style: TextStyle(
    //                           fontSize: 30,
    //                           fontWeight: FontWeight.w600,
    //                           color: Colors.white,
    //                         ),
    //                       ),
    //                       Text(
    //                         'Current Balance',
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w600,
    //                           color: Color(0xff848484),
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                   Text(
    //                     '257',
    //                     style: TextStyle(
    //                       fontSize: 40,
    //                       fontWeight: FontWeight.w600,
    //                       color: Colors.white,
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: 32),
    //             Column(
    //               children: [
    //                 Obx(() => CustomRadioListTile(
    //                   title: 'Direct transfer to',
    //                   image: 'assets/images/applePay_icon.png',
    //                 )),
    //                 Obx(() => CustomRadioListTile(
    //                   title: 'Direct transfer to',
    //                   image: 'assets/images/applePay_icon.png',
    //                 )),
    //                 Obx(() => CustomRadioListTile(
    //                   title: 'Direct transfer to',
    //                   image: 'assets/images/applePay_icon.png',
    //                 )),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
