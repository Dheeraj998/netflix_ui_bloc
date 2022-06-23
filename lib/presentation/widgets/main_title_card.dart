import 'package:flutter/material.dart';
import 'package:netflix_ui/presentation/widgets/main_card.dart';
import 'package:netflix_ui/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const Maincard()),
          ),
        )
      ],
    );
  }
}
