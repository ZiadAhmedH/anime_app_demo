import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:equatable/equatable.dart';

abstract class CharState extends Equatable {
  const CharState();

  @override
  List<Object?> get props => [];
}

class CharInitial extends CharState {
  const CharInitial();
}

class CharLoading extends CharState {
  const CharLoading();
}

class CharLoaded extends CharState {
  final List<Character> characters;

  const CharLoaded(this.characters);

  @override
  List<Object?> get props => [characters];
}


class CharError extends CharState {
  final String message;

  const CharError(this.message);

  @override
  List<Object?> get props => [message];
}
