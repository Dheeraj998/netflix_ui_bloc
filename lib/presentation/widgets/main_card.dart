import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
              'https://www.themoviedb.org/t/p/w440_and_h660_face/xH2wTVlsUlYeFEOVGFDaamHkMCm.jpg',
            ),
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
