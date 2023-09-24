// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';

import 'package:todo_hive/models/notes_model.dart';
import 'package:todo_hive/views/notes_view.dart';
import 'package:todo_hive/views/widgets/custom_app_bar.dart';
import 'package:todo_hive/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NotesModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        top: 50.0,
        right: 24.0,
      ),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.description = content ?? widget.note.description;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotesScreen(),
                ),
              );
            },
            text: 'Edit Notes',
            isSearch: false,
          ),
          const SizedBox(
            height: 44,
          ),
          CustomTextField(
            hint: 'Title',
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
