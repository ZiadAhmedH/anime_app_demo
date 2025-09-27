import '../../domain/entities/character.dart';

class ChaeracterModel {
  final String name;
  final String imageUrl;
  final String animeName;
  final String role;

  ChaeracterModel({
    required this.name,
    required this.imageUrl,
    required this.animeName,
    required this.role,
  });

  factory ChaeracterModel.fromJson(Map<String, dynamic> json) {
    return ChaeracterModel(
      name: json['name'] ?? '',
      imageUrl: json['image_url'] ?? '',
      animeName: json['anime_name'] ?? '',
      role: json['role'] ?? '',
    );
  }

  Character toEntity() {
    return Character(
      name: name,
      imageUrl: imageUrl,
      animeName: animeName,
    );
  }
}