import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
  final String imageUrl;
  const Maincard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
