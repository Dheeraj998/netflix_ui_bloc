import 'package:flutter/material.dart';

import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/home/widgets/custombutton_widget.dart';
import 'package:netflix_ui/presentation/widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieNAme;
  final String description;
  const EveryOnesWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieNAme,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          movieNAme,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
          description,
          style: const TextStyle(color: Colors.grey),
        ),
        kHeight50,
        VideoWidget(
          image: posterPath,
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              text: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              text: "MyList",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              text: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
