import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';
import 'package:todo_hive/models/notes_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
import 'package:intl/intl.dart';

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
  List colors = [
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.cyan,
    Colors.red,
  ];

  int selectedColor = 0;

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
          const SizedBox(
            height: 14,
          ),
          Row(
            children: List.generate(
                colors.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          selectedColor = colors[index].value;
                        },
                        child: CircleAvatar(
                          backgroundColor: colors[index],
                        ),
                      ),
                    )),
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                DateTime date = DateTime.now();
                String formattedDate = DateFormat.yMd().format(date);

                var notesModel = NotesModel(
                  title: title!,
                  description: subtitle!,
                  date: formattedDate,
                  color: selectedColor,
                );

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
