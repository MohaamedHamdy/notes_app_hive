import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}