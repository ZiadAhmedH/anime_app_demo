import 'package:anime_app_demo/core/errors/failures.dart';
import 'package:anime_app_demo/core/services/logger.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:anime_app_demo/features/home/domain/usecases/get_top_character.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/characters/char_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

class CharCubit extends Cubit<CharState> {
  final GetTopCharacter getTopCharacter;

  CharCubit(this.getTopCharacter) : super(const CharInitial());

  Future<void> fetchTopCharacters() async {
    try {
      emit(const CharLoading());

      await Future.delayed(const Duration(seconds: 1));

      final Either<Failure, List<Character>> result = await getTopCharacter();

      result.fold(
        (failure) {
          AppLogger.error('Error fetching top characters: ${failure.message}');
          emit(CharError(failure.message ?? 'Failed to load characters'));
        },
        (characters) {
          AppLogger.debug(
            'Successfully fetched ${characters.length} characters',
          );
         
            emit(CharLoaded(characters));
          
        },
      );
    } catch (e) {
      AppLogger.error('Unexpected error in fetchTopCharacters: $e');
      emit(const CharError('An unexpected error occurred'));
    }
  }


  
  }

  

