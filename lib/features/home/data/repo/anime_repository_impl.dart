import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/home/data/datasources/local_data_source.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:dartz/dartz.dart';


class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeLocalDataSource remoteDataSource;

  AnimeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Anime>>> getPopularAnimes() async {
    try {
      final models = await remoteDataSource.getAnimesList();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

}
