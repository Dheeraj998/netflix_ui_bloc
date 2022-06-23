import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/failures/main_failure.dart';
import 'package:netflix_ui/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_ui/domain/downloads/models/downloads.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IdownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<GetDownloadsImages>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(DownloadsState(
          isLoading: false,
          downloads: state.downloads,

          // downloadsFailureorSuccessOption: none(),
          isError: false,
        ));
        return;
      }
      // emit(const DownloadsState(
      //   isLoading: true,
      //   downloads: [],
      //   // downloadsFailureorSuccessOption: none()
      //   isError: false,
      // ));

      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();

      log(downloadsOption.toString());
      final _state = downloadsOption.fold(
          (failure) => state.copyWith(
                isLoading: false,
                // downloadsFailureorSuccessOption: some(Left(failure)),
                isError: true,
              ),
          (list) => state.copyWith(
                isLoading: false,
                downloads: list,
                // downloadsFailureorSuccessOption: some(Right(success))
              ));

      emit(_state);
    });
  }
}
