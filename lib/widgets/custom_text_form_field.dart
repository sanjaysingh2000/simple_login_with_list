import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.text,
      required this.icon,
      this.controller,
      this.validation,
      required this.obscureText});

  final Icon icon;
  final String text;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width,
      child: TextFormField(
        obscureText: obscureText,
        validator: validation,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: icon,
            label: Text(
              text,
              style: const TextStyle(color: Colors.black54),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(color: Colors.blue)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(color: Colors.blue))),
      ),
    );
  }
}
