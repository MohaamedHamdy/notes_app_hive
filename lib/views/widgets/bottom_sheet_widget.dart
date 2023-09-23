import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CustomModelSheetWidget extends StatelessWidget {
  const CustomModelSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
