// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.text = 'Notes',
    this.isSearch = true,
  }) : super(key: key);

  final String text;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
        CustomSearchIcon(
          isSearch: isSearch,
        ),
      ],
    );
  }
}
