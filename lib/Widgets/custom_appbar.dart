import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomSearchIcon(),
        Spacer(),
        Text(
          'مذكراتي',
          style: TextStyle(fontSize: 22,fontFamily: "Tajawal"),
        ),
      ],
    );
  }
}
