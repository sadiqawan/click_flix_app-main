import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_style.dart';

class TopBackWithTitle extends StatelessWidget {

  String title;
  Function() onPress;
    TopBackWithTitle({super.key,required this.title,required this.onPress});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onPress,
          child: SvgPicture.asset(
            "assets/svg_images/icon_back.svg",
            width: width * .020,
            height: height * .020,
          ),
        ),
        Text(title,style: desStyle.copyWith(color: ConstColor.primaryColor.value),)
        ,Container( width: width * .020,
          height: height * .020,)
      ],
    );
  }
}
