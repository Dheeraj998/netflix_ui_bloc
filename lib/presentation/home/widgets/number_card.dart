import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 250,
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w440_and_h660_face/xH2wTVlsUlYeFEOVGFDaamHkMCm.jpg',
                    ),
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
              style: TextStyle(
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
