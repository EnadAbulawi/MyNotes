import 'package:flutter/material.dart';
import 'package:mynote/Widgets/add_note_bottomsheet.dart';
import 'package:mynote/constants.dart';

import '../Widgets/notes_view_body.dart';

class NotewsView extends StatelessWidget {
  const NotewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
         
        backgroundColor: primaryColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBootomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
