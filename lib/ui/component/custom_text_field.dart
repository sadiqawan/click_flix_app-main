import 'package:click_flex_ui/core/constants/const_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/const_colors.dart';

class CustomTextFieldWithImage2 extends StatelessWidget {
  final TextEditingController controller;
  final SvgPicture? image;
  FocusNode? focusNode;
  final String hintText;
  final String? labelText;

  CustomTextFieldWithImage2({
    super.key,
    this.focusNode,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8,
      ),
      child: Container(
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
            // color: ConstColor.greyColor.value,
            borderRadius: BorderRadius.circular(12)),
        child: TextFormField(

          focusNode: focusNode,
          style: normalStyle,
          // cursorColor: blueColor,
          controller: controller,

          decoration: InputDecoration(
            label: Text(
              labelText ?? "",
            ),
            labelStyle: desStyle,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: ConstColor.greyColor.value,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: ClipRRect(
              child: Padding(
                padding: EdgeInsets.all(14),
                child: image,
              ),
            ),
            hintText: hintText,
            hintStyle: desStyle.copyWith(
                fontWeight: FontWeight.w400, color: ConstColor.greyColor.value),
          ),
        ),
      ),
    );
  }
}
class CommentsTextFieldWithImage2 extends StatelessWidget {
  final TextEditingController controller;
  final Icon? imageOne;
  final Icon? imageTwo;
  final Icon? imageThree;
  FocusNode? focusNode;
  final String hintText;
  final String? labelText;

  CommentsTextFieldWithImage2({
    Key? key,
    this.focusNode,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.imageOne,
    this.imageTwo,
    this.imageThree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Container(
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          focusNode: focusNode,
          style: TextStyle(), // Set your desired text style
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
            border: InputBorder.none,
            suffixIcon: Container(
              width: 100,
              child: Row(
                children: [
                  if (imageOne != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: imageOne,
                    ),
                  if (imageTwo != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(imageTwo!.icon),
                    ),
                  if (imageThree != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(imageThree!.icon),
                    ),
                ],
              ),
            ),
            hintText: hintText,
            hintStyle: desStyle, // Set your desired hint text style
          ),
        ),
      ),
    );
  }
}
