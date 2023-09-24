import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/cubit/notes_cubit.dart';
import 'widgets/custom_floating_action_button.dart';
import 'widgets/notes_view_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: NotesScreenBody(),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
