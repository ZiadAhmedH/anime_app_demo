import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository {
  Future<Either<Failure, List<Anime>>> getAnimes();
}