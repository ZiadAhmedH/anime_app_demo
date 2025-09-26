// lib/features/anime/data/datasources/anime_local_data_source.dart
import '../models/anime_model.dart';

abstract class AnimeLocalDataSource {
  Future<List<AnimeModel>> getAnimesList();
}

class AnimeLocalDataSourceImpl implements AnimeLocalDataSource {
  @override
  Future<List<AnimeModel>> getAnimesList() async {
    return [
      AnimeModel(
        title: 'Naruto',
        poster: 'assets/posters/naruto.svg',
        description: 'Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village.',
        rating: 8.5,
      ),
      AnimeModel(
        title: "Hunter x Hunter",
        poster: 'assets/posters/hunter.svg',
        description: 'Gon Freecss aspires to become a Hunter, an exceptional being capable of greatness. With his friends, he embarks on a journey filled with challenges and adventures.',
        rating: 9.0,
      ),
      AnimeModel(
        title: 'Conan the Detective',
        poster: 'assets/posters/conan.svg',
        description: 'In a world where humanity resides within enormous walled cities to protect themselves from Titans, gigantic humanoid creatures, Eren Yeager joins the military to fight them after his hometown is destroyed.',
        rating: 9.1,
      ),
      AnimeModel(
        title: "Dragon Ball Z",
        poster: 'assets/posters/dragon.svg',
        description: 'Goku and his friends defend the Earth against an assortment of villains ranging from intergalactic space fighters and conquerors, unnaturally powerful androids, and nearly indestructible creatures.',
        rating: 8.7,
      ),
    ];
  }
}
