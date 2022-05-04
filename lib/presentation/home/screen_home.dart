import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/home/widgets/backgroundCard.dart';
import 'package:netflix_ui/presentation/home/widgets/customButtonWidget.dart';
import 'package:netflix_ui/presentation/home/widgets/number_card.dart';
import 'package:netflix_ui/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_ui/presentation/widgets/main_card.dart';
import 'package:netflix_ui/presentation/widgets/main_title.dart';
import 'package:netflix_ui/presentation/widgets/main_title_card.dart';

ValueNotifier scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext, dynamic, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        MainTitleCard(
                          title: 'Released in the Past Year',
                        ),
                        kHeight,
                        MainTitleCard(
                          title: 'Trending Now',
                        ),
                        kHeight,
                        NumberTitleCard(),
                        kHeight,
                        MainTitleCard(
                          title: 'Tense Dramas',
                        ),
                        kHeight,
                        MainTitleCard(
                          title: 'South Indian Cinema',
                        ),
                        kHeight,
                      ],
                    ),
                    scrollNotifier.value
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1500),
                            width: double.infinity,
                            height: 80,
                            color: Colors.black.withOpacity(.5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://i.pinimg.com/originals/1b/54/ef/1b54efef3720f6ac39647fc420d4a6f9.png',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    Spacer(),
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
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: kHomeText,
                                    ),
                                    Text('Movies', style: kHomeText),
                                    Text('Categories', style: kHomeText),
                                  ],
                                )
                              ],
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              );
            }));
  }
}
