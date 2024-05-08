import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;

  const CustomContainer({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 56,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
        border: Border(
            bottom: BorderSide(color: Colors.grey),
            top: BorderSide(color: Colors.grey),
            left: BorderSide(color: Colors.grey),
            right: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        children: [
          Icon(leadingIcon , size: 24,color: Colors.white,),
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff848484)),
            ),
          ),
          Icon(trailingIcon , size: 20,color: Colors.white,),
        ],
      ),
    );
  }
}
