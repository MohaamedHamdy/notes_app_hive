// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    Key? key,
    this.isSearch = true,
  }) : super(key: key);

  final bool isSearch;

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
          icon: Icon(
            isSearch ? Icons.search : Icons.done,
            size: 28,
          ),
        ),
      ),
    );
  }
}
