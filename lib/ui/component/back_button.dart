import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/const_colors.dart';

class CustomBackButton extends StatelessWidget {
  Function() onPress;
    CustomBackButton({super.key,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return    InkWell(

      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ConstColor.blackColor.value,
          shape: BoxShape.circle,

        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: SvgPicture.asset("assets/svg_images/icon_back.svg",width: 18,height: 14,),
        ),
      ),
    );
  }
}
