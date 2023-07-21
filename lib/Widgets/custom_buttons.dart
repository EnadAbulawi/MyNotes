import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: Text(
          "حفظ المذكرة",
          style: TextStyle(fontFamily: "Tajawal", fontSize: 20,),
        ),
      ),
    );
  }
}