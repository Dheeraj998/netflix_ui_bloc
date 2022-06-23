part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    // required Option<Either<MainFailure, List<Downloads>>>
    //     downloadsFailureorSuccessOption,\
    required bool isError,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    debugPrint('initial triggered');
    return const DownloadsState(
      downloads: [],
      isLoading: true,
      isError: false,
      // downloadsFailureorSuccessOption: None()
    );
  }
}
