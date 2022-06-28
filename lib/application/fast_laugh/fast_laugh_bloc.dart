import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/failures/main_failure.dart';
import 'package:netflix_ui/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_ui/domain/downloads/models/downloads.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideourls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
];

ValueNotifier<Set<int>> likedVideosIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IdownloadsRepo _downloadService)
      : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      // if (state.videoList.isNotEmpty) {
      //   emit(FastLaughState(
      //       videoList: state.videoList, isLoading: false, isError: false));
      // }
      emit(const FastLaughState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
//get trening movies
      final _result = await _downloadService.getDownloadsImages();

      final _state = _result.fold((MainFailure failure) {
        return const FastLaughState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Downloads> list) {
        return FastLaughState(
          videoList: list,
          isLoading: false,
          isError: false,
        );
      });

//send to ui
      emit(_state);
    });

    on<LikeVideo>((event, emit) async {
      // likedVideosIdsNotifier.value.add(event.id);
      // likedVideosIdsNotifier.notifyListeners();
    });
    on<UnlikeVideo>((event, emit) {
      // likedVideosIdsNotifier.value.remove(event.id);
      // likedVideosIdsNotifier.notifyListeners();
    });
  }
}
