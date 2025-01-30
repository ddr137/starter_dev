class ServerException implements Exception {
  final String message;

  const ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

class NullResponseException implements Exception {
  final String message;

  const NullResponseException(this.message);

  @override
  String toString() => 'NullResponseException: $message';
}

class UnknownException implements Exception {
  final String message;

  const UnknownException(this.message);

  @override
  String toString() => 'UnknownException: $message';
}

class DatabaseException implements Exception {
  final String message;

  const DatabaseException(this.message);

  @override
  String toString() => 'DatabaseException: $message';
}