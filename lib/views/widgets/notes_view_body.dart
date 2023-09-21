import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

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
          CustomNotesItem(),
        ],
      ),
    );
  }
}

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Row(
        children: [
          LeftSection(),
          RightSection(),
        ],
      ),
    );
  }
}

class LeftSection extends StatelessWidget {
  const LeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
