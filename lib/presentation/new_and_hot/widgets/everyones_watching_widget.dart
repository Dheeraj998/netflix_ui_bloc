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
        const Text(
          'Friends',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          'This hitsitcom flollows the merry adventures of six 20-something pais as they navigate th pitfalls of work,life and love in 1990s Manhattan',
          style: TextStyle(color: Colors.grey),
        ),
        kHeight50,
        // const VideoWidget(),
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
