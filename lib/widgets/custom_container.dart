import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.radius,
      required this.someWidget, required this.color});

  final double height;
  final double radius;
  final double width;
  final Widget someWidget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: someWidget,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius)),
    );
  }
}
