import 'package:flutter/material.dart';
import 'custom_buttons.dart';
import 'customtextfiled.dart';

class AddNoteBootomSheet extends StatelessWidget {
  const AddNoteBootomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hint: "عنوان المذكرة",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              hint: "محتوى المذكرة",
              maxLines: 7,
            ),
            SizedBox(height: 16,),
            CustomButton(),
             SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
