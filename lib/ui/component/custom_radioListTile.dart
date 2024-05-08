import 'package:click_flex_ui/controller/AppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/const_style.dart';

class CustomRadioListTile extends StatefulWidget {
  final String title;
  final String image;

  const CustomRadioListTile({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<CustomRadioListTile> createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  final AppController appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: widget.title,
      groupValue: appController.isSelected.value ,
      onChanged: (value) {
        appController.toggleSelection();
      },
      title: Text(
        widget.title,
        style: desStyle.copyWith(fontSize: 16),
      ),
      activeColor: Colors.green,
      secondary: Padding(
        padding:  const EdgeInsets.only(top: 20.0,left: 20,
        bottom: 20),
        child: Image.asset(widget.image),
      ), // Accessing the image property
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
