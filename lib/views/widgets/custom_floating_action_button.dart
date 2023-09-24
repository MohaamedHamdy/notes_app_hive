import 'package:flutter/material.dart';

import 'bottom_sheet_widget.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
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
