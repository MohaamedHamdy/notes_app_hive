import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';

import 'custom_app_bar.dart';
import 'custom_item_list_view.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

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
          CustomAppBar(),
          SizedBox(
            height: 24,
          ),
          Expanded(child: CustomItemListView()),
        ],
      ),
    );
  }
}
