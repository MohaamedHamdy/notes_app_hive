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
      onPressed: () {
        showModalBottomSheet(
          // constraints: const BoxConstraints(
          //   minHeight: 400,
          //   // maxHeight: double.infinity,
          // ),
          // isScrollControlled: true,
          // useSafeArea: true,
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

class CustomModelSheetWidget extends StatelessWidget {
  const CustomModelSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
