import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anime_app_demo/features/details/domain/usecases/get_anime_details.dart';
import 'anime_details_state.dart';

class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  final GetAnimeDetails getAnimeDetails;

  AnimeDetailsCubit({required this.getAnimeDetails})
    : super(AnimeDetailsInitial());

  Future<void> loadAnimeDetails(int id) async {
    emit(AnimeDetailsLoading());

    final result = await getAnimeDetails(id);

    result.fold(
      (failure) => emit(AnimeDetailsError(failure.message ?? 'Unknown error')),
      (animeDetails) => emit(AnimeDetailsLoaded(animeDetails)),
    );
  }

  void retry(int id) {
    loadAnimeDetails(id);
  }
}
