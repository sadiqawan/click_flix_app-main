
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/const_colors.dart';



class CommonButton extends StatelessWidget {
  Function() onPress;
  String title;

  CommonButton({super.key,required this.onPress,required this.title});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap:onPress,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin:Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                ConstColor.gradientOneColor.value,
                ConstColor.gradientTwoColor.value,
              ]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0,vertical: 16),
          child: Text(title,style:GoogleFonts.raleway(
              color:ConstColor.primaryColor.value,
              fontSize:16,
              fontWeight:FontWeight.w600),),
        ),
      ),
    );
  }
}



class CustomBtnWithImage extends StatelessWidget {

  Function() onTap;
  SvgPicture image;
  String text;

    CustomBtnWithImage({super.key,required this.onTap, required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Container(
          height: 56,
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ConstColor.greyColor.value,width: .7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               image,

                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(text,style:GoogleFonts.raleway(
                      color:ConstColor.primaryColor.value,
                      fontSize:16,
                      fontWeight:FontWeight.w600),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
