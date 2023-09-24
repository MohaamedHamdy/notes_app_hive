// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:todo_hive/models/notes_model.dart';

class CustomNotesItem extends StatelessWidget {
  final int index;

  final List colors = const [
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.cyan,
  ];

  final NotesModel notes;

  const CustomNotesItem({
    Key? key,
    required this.index,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(notes.color) != Colors.black
            ? Color(notes.color)
            : Colors.red,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          LeftSection(
            notes: notes,
          ),
          const Spacer(),
          RightSection(
            notes: notes,
          ),
        ],
      ),
    );
  }
}

class LeftSection extends StatelessWidget {
  const LeftSection({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final NotesModel notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notes.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              notes.description,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black.withOpacity(0.3),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final NotesModel notes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 28.0, right: 20.0, bottom: 24.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              size: 28,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Text(
            '1',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black.withOpacity(0.3),
                ),
          ),
        ],
      ),
    );
  }
}
