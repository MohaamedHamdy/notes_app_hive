import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';

import '../../cubits/cubit/notes_cubit.dart';
import 'add_note_form.dart';

class CustomModelSheetWidget extends StatelessWidget {
  const CustomModelSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom + 24),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {}
            if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: (state is AddNoteLoading) ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
