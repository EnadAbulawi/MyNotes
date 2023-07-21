import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxLines = 1});

  final String hint ;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: "Tajawal",
          )),
    );
  }
}
