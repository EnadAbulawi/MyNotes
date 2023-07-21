import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          title: const Text(
              textAlign: TextAlign.end,
              'تجربة',
              style: TextStyle(
                  color: Colors.black, fontFamily: "Tajawal", fontSize: 22)),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: Text(
              textAlign: TextAlign.end,
              ' هذه مذكرة للتجربة وهذا ليس الشكل النهائي',
              style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontFamily: "Tajawal",
                  fontSize: 20),
            ),
          ),
          leading: const IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 28,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 00),
          child: Text(
            "May21 , 2023",
            style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
