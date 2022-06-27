import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:intl/intl.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
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
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: kWhiteColor,
                unselectedLabelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
          ComingSoonList(key: Key('coming_soon')),
          _buildEveryOneWatching(),
        ]),
      ),
    );
  }

  // Widget _buildComingSoon() {
  //   return ListView.builder(
  //     itemBuilder: (context, index) {
  //       return Column(
  //         children: const [
  //           kHeight,
  //           ComingSoonWidget(),
  //         ],
  //       );
  //     },
  //     itemCount: 5,
  //   );
  // }

//  shrinkWrap: true,
//       children: const [
//         kHeight,
//         ComingSoonWidget(),
//       ],
  Widget _buildEveryOneWatching() {
    return ListView.builder(itemBuilder: (context, index) => SizedBox()
        // const EveryOnesWatchingWidget(),
        // itemCount: 5,
        );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        BlocProvider.of<HotAndNewBloc>(context).add(LoadDataInComingSoon());
      },
    );

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('Error while getting data'),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text('No data added'),
          );
        } else {
          return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (context, index) {
                final movie = state.comingSoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                String month = '';
                String date = '';
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  print(_date);
                  final formatedDate =
                      DateFormat.yMMMMd('en_US').format(_date!);
                  print(formatedDate);

                  month = formatedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase();
                  date = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  month = '';
                  date = '';
                }

                return ComingSoonWidget(
                    id: movie.id.toString(),
                    month: month,
                    day: date,
                    posterPath: '$imageAppendUrl${movie.posterPath}',
                    movieNAme: movie.originalTitle ?? 'No title Provided',
                    description: movie.overview ?? 'no description');
              });
        }
      },
    );
  }
}
