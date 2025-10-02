import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/details/domain/entities/anime_details.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeDetailsRepository {
  Future<Either<Failure, AnimeDetails>> getAnimeDetails(int id);
}
