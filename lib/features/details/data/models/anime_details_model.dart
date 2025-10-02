import 'package:anime_app_demo/features/details/domain/entities/anime_details.dart';
import 'package:anime_app_demo/features/details/domain/entities/genre.dart';

class AnimeDetailsModel {
   
    final int id;
    final String title;
    final String description;
    final String imageUrl;
    final List<String> genres;

    final String views ; 

    final int  seasons ;
     
    final String  claps ; 
    
    AnimeDetailsModel({
        required this.id,
        required this.title,
        required this.description,
        required this.imageUrl,
        required this.genres,
        required this.views,
        required this.seasons,
        required this.claps,
    });
    

    factory AnimeDetailsModel.fromJson(Map<String, dynamic> json) {
        return AnimeDetailsModel(
            id: json['id'],
            title: json['title'],
            description: json['description'],
            imageUrl: json['image_url'],
            genres: List<String>.from(json['genres'].map((genre) => genre['name'])),
            views: json['views'].toString(),
            seasons: json['seasons'] as int,
            claps: json['claps'].toString(),
        );
    }
    

    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'title': title,
            'description': description,
            'image_url': imageUrl,
            'genres': genres.map((genre) => {'name': genre}).toList(),
            'views': views,
            'seasons': seasons,
            'claps': claps,
        };
    }

    

    AnimeDetails toEntity() {
        return AnimeDetails(
            id: id,
            title: title,
            description: description, 
            imageUrl: imageUrl,     
            genres: genres.map((genreName) => Genre(id: 0, name: genreName)).toList(),
            views: views,
            seasons: seasons,
            claps: claps,

        );
    }

    
}