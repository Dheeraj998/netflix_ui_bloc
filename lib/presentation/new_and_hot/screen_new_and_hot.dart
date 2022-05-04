import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/home/widgets/customButtonWidget.dart';
import 'package:netflix_ui/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_ui/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

import 'package:netflix_ui/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: kWhiteColor,
                size: 30,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth
            ],
            bottom: TabBar(
                labelColor: kBlackColor,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: kWhiteColor,
                unselectedLabelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                isScrollable: true,
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryOneWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            kHeight,
            ComingSoonWidget(),
          ],
        );
      },
      itemCount: 5,
    );
  }

//  shrinkWrap: true,
//       children: const [
//         kHeight,
//         ComingSoonWidget(),
//       ],
  Widget _buildEveryOneWatching() {
    return ListView.builder(
      itemBuilder: (context, index) => EveryOnesWatchingWidget(),
      itemCount: 5,
    );
  }
}
