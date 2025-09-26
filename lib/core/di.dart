// lib/injection_container.dart
import 'package:get_it/get_it.dart';


final sl = GetIt.instance; // sl = service locator

Future<void> init() async {
  //! Features - Anime
  // Cubit
  // sl.registerFactory(() => AnimeCubit(sl()));

  // // UseCases
  // sl.registerLazySingleton(() => GetAnimes(sl()));

  // // Repository
  // sl.registerLazySingleton<AnimeRepository>(
  //   () => AnimeRepositoryImpl(sl()),
  // );

  // // Data sources
  // sl.registerLazySingleton<AnimeLocalDataSource>(
  //   () => AnimeLocalDataSourceImpl(),
  // );

  //! Core
  // ممكن تضيف هنا NetworkInfo أو Logger
}
