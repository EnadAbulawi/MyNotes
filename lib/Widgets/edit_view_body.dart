import 'package:flutter/material.dart';
import 'package:mynote/Widgets/custom_appbar.dart';
import 'package:mynote/Widgets/customtextfiled.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'تعديل المذكرة',
            icon: Icons.check,
          ),
          SizedBox(height: 30,),
          CustomTextFiled(hint: "العنوان"),
           SizedBox(height: 16,),
          CustomTextFiled(hint: "محتوى المذكرة",maxLines: 9,),
        ],
      ),
    );
  }
}
