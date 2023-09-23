import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomModelSheetWidget extends StatelessWidget {
  const CustomModelSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: ListView(
        shrinkWrap: true,
        children: const [
          CustomTextField(hint: 'Title'),
          SizedBox(height: 20),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(height: 40),
          CustomButton(),
        ],
      ),
    );
  }
}
