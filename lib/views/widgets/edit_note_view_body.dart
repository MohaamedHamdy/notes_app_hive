import 'package:flutter/material.dart';
import 'package:todo_hive/views/widgets/custom_app_bar.dart';
import 'package:todo_hive/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 24.0,
        top: 50.0,
        right: 24.0,
      ),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Edit Notes',
            isSearch: false,
          ),
          SizedBox(
            height: 44,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
