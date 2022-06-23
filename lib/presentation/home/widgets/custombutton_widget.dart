import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final double textSize;
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.iconSize = 30,
    this.textSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: kWhiteColor,
        ),
        Text(
          text,
          style: TextStyle(fontSize: textSize),
        ),
      ],
    );
  }
}
