import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.cyan,
        minimumSize: Size(MediaQuery.of(context).size.width, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Add',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
      ),
    );
  }
}
