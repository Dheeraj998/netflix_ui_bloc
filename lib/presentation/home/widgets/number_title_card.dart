import 'package:flutter/material.dart';

import 'package:netflix_ui/presentation/home/widgets/number_card.dart';
import 'package:netflix_ui/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  final List<String> imageList;
  const NumberTitleCard({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 TV Shows In India Today'),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                imageList.length,
                (index) => NumberCard(
                      imageUrl: imageList[index],
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
