import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:equatable/equatable.dart';

abstract class AnimeState extends Equatable {
  const AnimeState();

  @override
  List<Object?> get props => [];
}

class AnimeInitial extends AnimeState {
  const AnimeInitial();
}

class AnimeLoading extends AnimeState {
  const AnimeLoading();
}

class AnimeLoaded extends AnimeState {
  final List<Anime> animes;
  const AnimeLoaded(this.animes);

  @override
  List<Object?> get props => [animes];
}

class AnimeError extends AnimeState {
  final String message;
  const AnimeError(this.message);

  @override
  List<Object?> get props => [message];
}


// for characters

// loading state is same

class CharactersLoading extends AnimeState {
  const CharactersLoading();
}

class CharactersLoaded extends AnimeState {
  final List<Character>? characters;
  const CharactersLoaded(this.characters);

  @override
  List<Object?> get props => [characters];
}


class CharactersError extends AnimeState {
  final String message;
  const CharactersError(this.message);

  @override
  List<Object?> get props => [message];
}
