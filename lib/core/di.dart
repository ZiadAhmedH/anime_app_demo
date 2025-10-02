import 'package:anime_app_demo/features/home/data/datasources/local_data_source.dart';
import 'package:anime_app_demo/features/home/data/repo/anime_repository_impl.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_popular_animes.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_top_character.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime/anime_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/characters/char_cubit.dart';

// Add these imports for anime details
import 'package:anime_app_demo/features/details/data/datasources/anime_detail_local_data_source.dart';
import 'package:anime_app_demo/features/details/data/repositories/anime_details_repository_impl.dart';
import 'package:anime_app_demo/features/details/domain/repositories/anime_details_repository.dart';
import 'package:anime_app_demo/features/details/domain/usecases/get_anime_details.dart';
import 'package:anime_app_demo/features/details/presentation/cubit/anime_details_cubit.dart';

import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Existing Home Feature Cubits
  sl.registerFactory(() => AnimeCubit(sl()));
  sl.registerFactory(() => CharCubit(sl()));

  // New Details Feature Cubit
  sl.registerFactory(() => AnimeDetailsCubit(getAnimeDetails: sl()));

  // Existing Home Feature Use Cases
  sl.registerLazySingleton(() => GetPopularAnimes(sl()));
  sl.registerLazySingleton(() => GetTopCharacter(sl()));

  // New Details Feature Use Case
  sl.registerLazySingleton(() => GetAnimeDetails(sl()));

  // Existing Home Feature Repository
  sl.registerLazySingleton<AnimeRepository>(() => AnimeRepositoryImpl(sl()));

  // New Details Feature Repository
  sl.registerLazySingleton<AnimeDetailsRepository>(
    () => AnimeDetailsRepositoryImpl(localDataSource: sl()),
  );

  // Existing Home Feature Data Source
  sl.registerLazySingleton<AnimeLocalDataSource>(
    () => AnimeLocalDataSourceImpl(),
  );

  // New Details Feature Data Source
  sl.registerLazySingleton<AnimeDetailLocalDataSource>(
    () => AnimeDetailLocalDataSourceImpl(),
  );
}
