import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_hive/cubits/add_note_cubit/custom_bloc_observer.dart';
import 'package:todo_hive/cubits/cubit/notes_cubit.dart';
import 'package:todo_hive/models/notes_model.dart';

import 'constants.dart';
import 'views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesMdoelAdapter());
  Bloc.observer = CustomBlocObserver();
  await Hive.openBox<NotesModel>(box);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit(),
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
