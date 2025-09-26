import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:dartz/dartz.dart';


abstract class AnimeRepository {
  Future<Either<Failure, List<Anime>>> getPopularAnimes();
}
