import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_hive/models/notes_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        children: [
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
              return null;
            },
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                var notesModel = NotesModel(
                    title: title!,
                    description: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.black.value);

                BlocProvider.of<AddNoteCubit>(context).addNote(notesModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
