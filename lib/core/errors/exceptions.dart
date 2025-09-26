// core/errors/exceptions.dart

/// Thrown when a server request fails
class ServerException implements Exception {}

/// Thrown when there is no cached data
class CacheException implements Exception {}

/// Thrown when there is no internet connection
class NoConnectionException implements Exception {}

/// Thrown when a local database (SQLite/Hive) operation fails
class LocalException implements Exception {}
