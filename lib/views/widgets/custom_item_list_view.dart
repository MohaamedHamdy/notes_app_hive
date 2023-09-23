import 'package:flutter/material.dart';

import 'custom_notes.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomNotesItem(
            index: index,
          );
        },
      ),
    );
  }
}
