import 'package:flutter/material.dart';

import '../Widgets/notes_view_body.dart';

class NotewsView extends StatelessWidget {
  const NotewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
