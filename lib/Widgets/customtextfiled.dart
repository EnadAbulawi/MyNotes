import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxLines = 1, this.onSaved});

  final String hint ;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true ) {
          return "الرجاء عدم ترك الحقول فارغة";
        } else {
          return null;
        }
      },
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
