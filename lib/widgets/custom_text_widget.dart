import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      this.color,
       this.fontWeightt});

  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeightt;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeightt,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
