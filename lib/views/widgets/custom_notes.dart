// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomNotesItem extends StatelessWidget {
  final int index;

  final List colors = [
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.cyan,
  ];

  CustomNotesItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: colors[index % colors.length],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Row(
        children: [
          LeftSection(),
          Spacer(),
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
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter Tips',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Build your carrer with confidence',
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
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0, right: 20.0, bottom: 24.0),
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
            'Sep 21/2023',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black.withOpacity(0.3),
                ),
          ),
        ],
      ),
    );
  }
}
