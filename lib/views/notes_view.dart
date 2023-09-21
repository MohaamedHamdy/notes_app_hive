import 'package:flutter/material.dart';

import 'widgets/notes_view_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesScreenBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
