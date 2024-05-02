import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/const_colors.dart';


class RoundButton extends StatelessWidget {

  SvgPicture image;
    RoundButton({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: ConstColor.greyColor.value, // Choose your border color
          width: .7, // Choose the border width
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: image,
      ),
    );
  }
}
