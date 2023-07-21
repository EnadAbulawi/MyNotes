import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomSearchIcon(icon: icon,),
        Spacer(),
        Text(
          title,
          style: TextStyle(fontSize: 22,fontFamily: "Tajawal"),
        ),
      ],
    );
  }
}
