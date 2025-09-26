import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:dartz/dartz.dart';


class GetPopularAnimes {
  final AnimeRepository repository;

  GetPopularAnimes(this.repository);

  Future<Either<Failure, List<Anime>>> call() {
    return repository.getPopularAnimes();
  }
}
