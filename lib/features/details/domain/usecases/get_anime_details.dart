import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/details/domain/entities/anime_details.dart';
import 'package:anime_app_demo/features/details/domain/repositories/anime_details_repository.dart';
import 'package:dartz/dartz.dart';

class GetAnimeDetails {
  final AnimeDetailsRepository repository;

  GetAnimeDetails(this.repository);

  Future<Either<Failure, AnimeDetails>> call(int id) async {
    return await repository.getAnimeDetails(id);
  }
}
