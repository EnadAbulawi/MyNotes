import 'package:flutter/material.dart';
import 'custom_buttons.dart';
import 'customtextfiled.dart';

class AddNoteBootomSheet extends StatelessWidget {
  const AddNoteBootomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
         const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hint: "عنوان المذكرة",
          ),
         const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
              onSaved: (value) {
              subtitle = value;
            },
            hint: "محتوى المذكرة",
            maxLines: 7,
          ),
         const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
         const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
