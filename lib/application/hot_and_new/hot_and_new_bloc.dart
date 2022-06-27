import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/failures/main_failure.dart';
import 'package:netflix_ui/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix_ui/domain/hot_and_new/model/hot_and_new.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {
      emit(const HotAndNewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: true,
          isError: false));

      final _result = await _hotAndNewService.getHotAndNewMovieData();

      final _state = _result.fold((MainFailure failure) {
        return const HotAndNewState(
            comingSoonList: [],
            everyOnesWatchingList: [],
            isLoading: false,
            isError: true);
      }, (resp) {
        return HotAndNewState(
            comingSoonList: resp.results,
            everyOnesWatchingList: state.everyOnesWatchingList,
            isLoading: false,
            isError: false);
      });

      emit(_state);
    });
    on<LoadDataEveryOneIsWatching>((event, emit) {
      //
    });
  }
}
