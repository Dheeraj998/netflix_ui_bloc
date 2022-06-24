import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_ui/presentation/fast_laughs/widgets/video_list_item.dart';

class ScreenFastAndLaugh extends StatelessWidget {
  const ScreenFastAndLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
      },
    );
    return Scaffold(
      body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error while  getting data'),
            );
          } else if (state.videoList.isEmpty) {
            return const Center(
              child: Text('List is Empty'),
            );
          } else {
            return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return VideoListitemInheritedWidget(
                      widget: VideoListItem(
                          key: Key(index.toString()), index: index),
                      movieData: state.videoList[index]);
                }));
          }
        },
      )),
    );
  }
}
