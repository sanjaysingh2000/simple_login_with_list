import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(18), color: color),
      height: MediaQuery.sizeOf(context).height*0.05,
      width: MediaQuery.sizeOf(context).width*0.07,
      padding: const EdgeInsets.all(5),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
