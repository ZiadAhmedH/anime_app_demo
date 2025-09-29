import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
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

