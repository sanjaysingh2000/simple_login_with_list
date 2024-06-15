import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button(
      {super.key,
      required this.text,
      required this.weight,
      required this.size,
      required this.textColor, required this.color,});

  final String text;
  final FontWeight weight;
  final double size;
  final Color textColor;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: MediaQuery.sizeOf(context).height*0.050,
          decoration: BoxDecoration(
            color: color
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: size,
                fontWeight: weight,
                color: textColor,
              ),
            ),
          ),
        ));
  }
}
