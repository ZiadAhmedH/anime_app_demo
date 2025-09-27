
import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/core/services/logger.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_popular_animes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'anime_state.dart';

class AnimeCubit extends Cubit<AnimeState> {
  final GetPopularAnimes getPopularAnimes;

  AnimeCubit(this.getPopularAnimes) : super(const AnimeInitial());

  Future<void> fetchPopularAnimes() async {
    emit(const AnimeLoading());
         await Future.delayed(const Duration(seconds: 2));

    final Either<Failure, List<Anime>> result = await getPopularAnimes();

    result.fold((failure) {
      AppLogger.error('Error fetching popular animes: ${failure.message}');
      emit(AnimeError(failure.message ?? 'Unknown error occurred'));
    }, (animes) {
      // anime list fetched successfully
      AppLogger.debug('Fetched ${animes.length} popular animes');
      emit(AnimeLoaded(animes));
    }
    
    
    );
  }
}
