import 'package:dartz/dartz.dart';
import 'package:netflix_ui/domain/core/failures/main_failure.dart';
import 'package:netflix_ui/domain/downloads/models/downloads.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
