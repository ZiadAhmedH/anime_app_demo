class AnimeModel {
  final String title;
  final String description;
  final String poster;
  final String charImage;

  AnimeModel({
    required this.title,
    required this.description,
    required this.poster,
    required this.charImage,
  });


  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      title: json['title'],
      description: json['description'],
      poster: json['poster'],
      charImage: json['charImage'],
    );
  }
}