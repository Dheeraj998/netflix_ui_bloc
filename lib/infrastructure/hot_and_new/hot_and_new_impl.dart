import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/api_end_points.dart';
import 'package:netflix_ui/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_ui/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix_ui/domain/hot_and_new/model/hot_and_new.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImpl implements HotAndNewService {
  @override
  Future<Either<MainFailure, HotAndNew>> getHotAndNewMovieData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotAndNewMovie);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNew.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFilure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNew>> getHotAndNewTvData() {
    // TODO: implement getHotAndNewTvData
    throw UnimplementedError();
  }
}
