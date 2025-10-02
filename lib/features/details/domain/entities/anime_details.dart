import 'genre.dart';

class AnimeDetails {
   
   final int id;
    final String title;
    final String description;
    final String imageUrl;
    final List<Genre> genres;
    
    final String views ;
    final int  seasons ;
    final String  claps ;

    AnimeDetails({
      required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.genres,
      required this.views,
      required this.seasons,
      required this.claps,
    });


}