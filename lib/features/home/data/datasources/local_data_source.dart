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
        id: '2',
        title: "Hunter x Hunter",
        poster: 'assets/posters/hunter.png',
        description: 'Gon Freecss aspires to become a Hunter, an exceptional being capable of greatness. With his friends, he embarks on a journey filled with challenges and adventures.',
        rating: 9.0,
      ),
      AnimeModel(
        id: '3',
        title: 'Conan the Detective',
        poster: 'assets/posters/conan.png',
        description: 'In a world where humanity resides within enormous walled cities to protect themselves from Titans, gigantic humanoid creatures, Eren Yeager joins the military to fight them after his hometown is destroyed.',
        rating: 9.1,
      ),
      AnimeModel(
        id: '4',
        title: "Dragon Ball Z",
        poster: 'assets/posters/dragon.png',
        description: 'Goku and his friends defend the Earth against an assortment of villains ranging from intergalactic space fighters and conquerors, unnaturally powerful androids, and nearly indestructible creatures.',
        rating: 8.7,
      ),
    ];
  }
}
