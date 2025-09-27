import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:dartz/dartz.dart';

class GetTopCharacter {
      final AnimeRepository repository;
      GetTopCharacter(this.repository);


     Future<Either<Failure, List<Character>>> call() {
      return repository.topAnimeCharaters();
  } 

}