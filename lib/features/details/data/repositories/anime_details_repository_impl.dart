import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/details/domain/entities/anime_details.dart';
import 'package:dartz/dartz.dart';
import 'package:anime_app_demo/features/details/data/datasources/anime_detail_local_data_source.dart';
import 'package:anime_app_demo/features/details/domain/repositories/anime_details_repository.dart';

class AnimeDetailsRepositoryImpl implements AnimeDetailsRepository {
  final AnimeDetailLocalDataSource localDataSource;

  AnimeDetailsRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, AnimeDetails>> getAnimeDetails(int id) async {
    try {
      final result = await localDataSource.getAnimeDetail(id);
      return result.fold(
        (failure) => Left(failure),
        (animeModel) => Right(animeModel.toEntity()),
      );
    } catch (e) {
      return Left(ServerFailure('Unexpected error: ${e.toString()}'));
    }
  }
}
