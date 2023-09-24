import 'package:flutter/material.dart';

import 'widgets/bottom_sheet_widget.dart';
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
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          context: context,
          builder: (contex) {
            return const CustomModelSheetWidget();
          },
        );
      },
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
