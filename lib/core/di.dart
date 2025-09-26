import 'package:anime_app_demo/features/home/data/datasources/local_data_source.dart';
import 'package:anime_app_demo/features/home/data/repo/anime_repository_impl.dart';
import 'package:anime_app_demo/features/home/domain/repo/anime_repo.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_popular_animes.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime_cubit.dart';
import 'package:get_it/get_it.dart';



final sl = GetIt.instance; // sl = service locator

Future<void> init() async {
  //! Features - Home
  // Cubit
  sl.registerFactory(() => AnimeCubit(sl()));

  // UseCases
  sl.registerLazySingleton(() => GetPopularAnimes(sl()));

  // Repository
  sl.registerLazySingleton<AnimeRepository>(
    () => AnimeRepositoryImpl(sl()),
  );

  // Data sources
  sl.registerLazySingleton<AnimeLocalDataSource>(
    () => AnimeLocalDataSourceImpl(),
  );

  //! External
}
