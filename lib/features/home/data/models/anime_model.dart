class AnimeModel {
  final String title;
  final String description;
  final String poster;
   final double rating;

  AnimeModel({
    required this.title,
    required this.description,
    required this.poster,
    required this.rating,
  });


  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      title: json['title'],
      description: json['description'],
      poster: json['poster'],
      rating: (json['rating'] as num).toDouble(),
    );
  }
}