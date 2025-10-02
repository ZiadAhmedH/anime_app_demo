import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:anime_app_demo/features/details/data/models/anime_details_model.dart';

abstract class AnimeDetailLocalDataSource {
  Future<Either<Failure, AnimeDetailsModel>> getAnimeDetail(int id);
}

class AnimeDetailLocalDataSourceImpl implements AnimeDetailLocalDataSource {
  @override
  Future<Either<Failure, AnimeDetailsModel>> getAnimeDetail(int id) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      final animeDetail = AnimeDetailsModel(
        id: 1,
        title: "Demon Slayer",
        description:
            "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
        imageUrl: "assets/details/inner-poster.png",
        genres: ["Dark Fantasy", "Action", "Adventure"],
        views: "2.3M",
        seasons: 4,
        claps: "2K",
       
      );

      return Right(animeDetail);
    } catch (e) {
      return Left(CacheFailure('Failed to get anime details: ${e.toString()}'));
    }
  }
}
