class AppRoutes {
  // Route paths
  static const String home = '/';
  static const String details = '/details';
  static const String plan = '/plan';

  // Route names
  static const String homeName = 'home';
  static const String detailsName = 'details';
  static const String planName = 'plan';

  // Helper methods for navigation
  static String detailsWithId(int animeId) => '/details/$animeId';
}
