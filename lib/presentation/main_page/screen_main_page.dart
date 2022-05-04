import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/presentation/downloads/screen_downloads.dart';
import 'package:netflix_ui/presentation/fast_laughs/screen_fast_laugh.dart';
import 'package:netflix_ui/presentation/home/screen_home.dart';
import 'package:netflix_ui/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_ui/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_ui/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastAndLaugh(),
    ScreenSearch(),
    ScreenDownload()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext ctx, int index, Widget? _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
