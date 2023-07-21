import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(title: 'مذكراتي', icon: Icons.search,),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
