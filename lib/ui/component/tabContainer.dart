
import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/material.dart';

import '../../core/constants/const_colors.dart';


class TabContainer extends StatelessWidget {
final  String text;

Function() onPress;
final Color textColor;
final LinearGradient? linerGradient;

  TabContainer({super.key,
    required this.textColor,
    required this.text,
    this.linerGradient,
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 3.0,right: 3.0,top: 2,bottom: 2),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: linerGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0,right: 29.0),
          child: Text(text,style: desStyle.copyWith(color: textColor,fontWeight: FontWeight.w600),),
        ),

      ),
    );
  }
}


//
// import 'package:click_flex_ui/core/constants/const_style.dart';
// import 'package:flutter/material.dart';
//
//
// class TabContainer extends StatelessWidget {
//   final  String text;
//   final Color borderColor;
//   Function() onPress;
//   final Color textColor;
//
//   TabContainer({super.key,required this.textColor,required this.text,required this.borderColor,required this.onPress});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       splashColor: Colors.transparent,
//       onTap:onPress,
//       child: Container(
//           alignment: Alignment.center,
//
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: 8, vertical: 6),
//             child: Text(
//               text,
//               style: mediumStyle.copyWith(color: textColor),
//             ),
//           )),
//     );
//   }
// }