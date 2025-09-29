
import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/core/services/logger.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_popular_animes.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_top_character.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'anime_state.dart';

class AnimeCubit extends Cubit<AnimeState> {
  final GetPopularAnimes getPopularAnimes;
  final GetTopCharacter getTopCharacter;

  AnimeCubit(this.getPopularAnimes , this.getTopCharacter) : super(const AnimeInitial());

  Future<void> fetchPopularAnimes() async {
    emit(const AnimeLoading());
         await Future.delayed(const Duration(seconds: 2));

    final Either<Failure, List<Anime>> result = await getPopularAnimes();

    result.fold((failure) {
      AppLogger.error('Error fetching popular animes: ${failure.message}');
      emit(AnimeError(failure.message ?? 'Unknown error occurred'));
    }, (animes) {
      AppLogger.debug('Fetched ${animes.length} popular animes');
      emit(AnimeLoaded(animes));
    }
    
    );
  }

  Future<void> fetchTopCharacters() async {
    emit(const CharactersLoading());
         await Future.delayed(const Duration(seconds: 2));

    final Either<Failure, List<Character>> result = await getTopCharacter();

    result.fold((failure) {
      AppLogger.error('Error fetching popular animes: ${failure.message}');
      emit(AnimeError(failure.message ?? 'Unknown error occurred'));
    }, (chars) {
      AppLogger.debug('Fetched ${chars.toList()} popular animes');
      emit(CharactersLoaded(chars));
    }
    
    );
  }

}
