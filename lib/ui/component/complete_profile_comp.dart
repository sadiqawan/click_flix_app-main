import 'package:click_flex_ui/controller/AppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/const_style.dart';

class CompleteProfileComp extends StatefulWidget {
  String label;
  final List<String> items;
  CompleteProfileComp({super.key,required this.label,required this.items});

  @override
  State<CompleteProfileComp> createState() => _CompleteProfileCompState();
}

class _CompleteProfileCompState extends State<CompleteProfileComp> {
  @override
  Widget build(BuildContext context) {
    final appController=Get.find<AppController>();
    return  Padding(
      padding:   EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              widget.label,
              style: desStyle),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey, // Customize border color
              ),
            ),
            child: DropdownButton<String>(
              onChanged:(newValue){
                setState(() {
                  appController.gender.value=newValue!;
                });

              },
              style:desStyle,
              underline: Container(),
              icon:   const ImageIcon(
                AssetImage("assets/images/icon_down.png"),
                color: Colors.grey, // Customize dropdown button icon color
              ),
              isExpanded: true,
              value: appController.gender.value,

              items:widget.items .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
