import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_hive/models/notes_model.dart';

import 'views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');

  Hive.registerAdapter(NotesMdoelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesScreen(),
      ),
    );
  }
}
