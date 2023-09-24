// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_hive/models/notes_model.dart';

import 'widgets/edit_note_view_body.dart';

class EditViewScreen extends StatelessWidget {
  const EditViewScreen({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
