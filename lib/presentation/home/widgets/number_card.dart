import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  const NumberCard({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 250,
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: 20,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 130,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red),
            ),
          ),
        )
      ],
    );
  }
}
