import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';

import 'custom_app_bar.dart';
import 'custom_item_list_view.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 24.0,
          top: 50.0,
          right: 24.0,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: CustomItemListView()),
          ],
        ),
      ),
    );
  }
}
