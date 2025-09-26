// lib/features/anime/data/repositories/anime_repository_impl.dart


import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/home/data/datasources/local_data_source.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeLocalDataSource localDataSource;

  AnimeRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, List<Anime>>> getAnimes() async {
    try {
      final animes = await localDataSource.getAnimesList();
      return Right(animes);
    } catch (_) {
      return Left(LocalFailure('Failed to fetch local data'));
    }
  }
}
