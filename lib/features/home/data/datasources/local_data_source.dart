// lib/features/anime/data/datasources/anime_local_data_source.dart
import 'package:anime_app_demo/features/home/data/models/chaeracter_model.dart';

import '../models/anime_model.dart';

abstract class AnimeLocalDataSource {
  Future<List<AnimeModel>> getAnimesList();
  Future<List<ChaeracterModel>> getTopAnimeCharacters();
  
}

class AnimeLocalDataSourceImpl implements AnimeLocalDataSource {
   
   

  @override
  Future<List<AnimeModel>> getAnimesList() async {
    return [
       AnimeModel(
        id: '3',
        title: 'Conan the Detective',
        poster: 'assets/posters/conan.png',
        genre: "Mystery",
        description: 'In a world where humanity resides within enormous walled cities to protect themselves from Titans, gigantic humanoid creatures, Eren Yeager joins the military to fight them after his hometown is destroyed.',
        rating: 4.1,
      ),

      AnimeModel(
        id: '2',
        title: "Hunter x Hunter",
        poster: 'assets/posters/hunter.png',
        genre: "Adventure",
        description: 'Gon Freecss aspires to become a Hunter, an exceptional being capable of greatness. With his friends, he embarks on a journey filled with challenges and adventures.',
        rating: 5.0,
      ),
     
      AnimeModel(
        id: '4',
        title: "Dragon Ball Z",
        genre: "Action",
        poster: 'assets/posters/dragon.png',
        description: 'Goku and his friends defend the Earth against an assortment of villains ranging from intergalactic space fighters and conquerors, unnaturally powerful androids, and nearly indestructible creatures.',
        rating: 4.7,
      ),
    ];
  }
  
  @override
  Future<List<ChaeracterModel>> getTopAnimeCharacters() async {
      return [
        ChaeracterModel(
          animeName: "Hunter x Hunter",
          imageUrl: "assets/chars/gon.png",
          name: "Gon Freecss",
          role: "Main Protagonist",
        ),
        ChaeracterModel(
           animeName: "Naruto",
          imageUrl: "assets/chars/naruto.png",
          name: "Naruto Uzumaki",
          role: "Main Protagonist",
        ),
        ChaeracterModel(
          animeName: "One Piece",
          imageUrl: "assets/chars/loffy.png",
          name: "Luffy",
          role: "Main Protagonist",
        ),

        ChaeracterModel(
          animeName: "Detective Conan",
          imageUrl: "assets/chars/conan.png",
          name: "Conan Edogawa",
          role: "Main Protagonist",
        ),
      ];
  }
}
