import '../../domain/entities/anime.dart';

class AnimeModel {
  final String id;
  final String title;
  final String description;
  final String poster;
  final String genre;
  final double rating;

  AnimeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.poster,
    required this.genre,
    required this.rating,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      poster: json['poster'] ?? '',
      genre: json['genre'] ?? '', 
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Anime toEntity() {
    return Anime(
      title: title,
      poster: poster,
      genre: genre,
      rating: rating,
    );
  }
}
