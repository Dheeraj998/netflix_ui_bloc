import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/application/Home/home_bloc.dart';

import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/presentation/home/widgets/background_card.dart';

import 'package:netflix_ui/presentation/home/widgets/number_title_card.dart';

import 'package:netflix_ui/presentation/widgets/main_title_card.dart';

ValueNotifier scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
      },
    );
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext ctx, dynamic, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state.hasError) {
                          return const Center(
                            child: Text('Error while getting data'),
                          );
                        }

                        final _releasePastyear =
                            state.pastYearMovieList.map((m) {
                          return "$imageAppendUrl${m.posterPath}";
                        }).toList();
                        _releasePastyear.shuffle();
                        final _trending = state.trendingMovieList.map((m) {
                          return "$imageAppendUrl${m.posterPath}";
                        }).toList();
                        final _tense = state.tenseDramaMoieList.map((m) {
                          return "$imageAppendUrl${m.posterPath}";
                        }).toList();
                        final _southIndian =
                            state.southIndianMovieList.map((m) {
                          return "$imageAppendUrl${m.posterPath}";
                        }).toList();

                        final _top10Show = state.trendingTvList.map(
                          (t) {
                            return "$imageAppendUrl${t.posterPath}";
                          },
                        ).toList();
                        return ListView(
                          children: [
                            const BackgroundCard(),
                            MainTitleCard(
                              title: 'Released in the Past Year',
                              posterList: _releasePastyear,
                            ),
                            kHeight,
                            MainTitleCard(
                                title: 'Trending Now', posterList: _trending),
                            kHeight,
                            NumberTitleCard(
                              imageList: _top10Show.sublist(0, 10),
                            ),
                            kHeight,
                            MainTitleCard(
                              title: 'Tense Dramas',
                              posterList: _tense,
                            ),
                            kHeight,
                            MainTitleCard(
                              title: 'South Indian Cinema',
                              posterList: _southIndian,
                            ),
                            kHeight,
                          ],
                        );
                      },
                    ),
                    scrollNotifier.value
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1500),
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
                                    const Spacer(),
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
                                  children: const [
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
                        : const SizedBox(),
                  ],
                ),
              );
            }));
  }
}
