import 'package:anime_app_demo/features/home/data/datasources/local_data_source.dart';
import 'package:anime_app_demo/features/home/data/repo/anime_repository_impl.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_popular_animes.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_top_character.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime/anime_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/characters/char_cubit.dart';
import 'package:get_it/get_it.dart';



final sl = GetIt.instance; 

Future<void> init() async {
  
  sl.registerFactory(() => AnimeCubit(sl()));

  sl.registerFactory(() => CharCubit(sl()));

  sl.registerLazySingleton(() => GetPopularAnimes(sl()));
  sl.registerLazySingleton(() => GetTopCharacter(sl()));

  sl.registerLazySingleton<AnimeRepository>(
    () => AnimeRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<AnimeLocalDataSource>(
    () => AnimeLocalDataSourceImpl(),
  );

   


}
