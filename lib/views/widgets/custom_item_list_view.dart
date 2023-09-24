import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';
import 'package:todo_hive/models/notes_model.dart';
import 'package:todo_hive/views/edit_view.dart';

import 'custom_notes.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditViewScreen(),
                  ),
                ),
                child: CustomNotesItem(
                  notes: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
