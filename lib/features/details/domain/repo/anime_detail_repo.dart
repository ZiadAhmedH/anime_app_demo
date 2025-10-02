import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/details/domain/entities/anime_details.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeDetailRepository {
   Future<Either<Failure, AnimeDetails>> getAnimeDetail(int id);
  
}