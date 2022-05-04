import 'package:flutter/material.dart';
import 'package:netflix_ui/presentation/fast_laughs/widgets/video_list_item.dart';

class ScreenFastAndLaugh extends StatelessWidget {
  const ScreenFastAndLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(20, (index) {
                return VideoListItem(
                  index: index,
                );
              }))),
    );
  }
}
