class Anime {
  final String title;
  final String poster;
  final double rating;
  final String genre;
  

  Anime({required this.title, required this.poster , required this.rating , required this.genre});

   @override
     String toString() {
    return 'Anime(title: $title, rating: $rating)';
  }
}
