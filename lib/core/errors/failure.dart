import 'package:equatable/equatable.dart';

/// Represents a generic failure.
sealed class Failure extends Equatable {
  final String message;
  final StackTrace? stackTrace;

  const Failure(this.message, [this.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];

  @override
  String toString() => '$runtimeType: $message\n${stackTrace ?? ''}';
}

/// Represents a failure caused by unknown errors.
/// This is used as a fallback when the type of failure cannot be determined.
final class UnknownFailure extends Failure {
  const UnknownFailure(super.message, [super.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

/// Represents a failure caused by network issues.
/// For example, when there is no internet connection.
final class NetworkFailure extends Failure {
  const NetworkFailure(super.message, [super.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

/// Represents a failure caused by null responses.
/// For example, when an API call returns null instead of the expected data.
final class NullResponseFailure extends Failure {
  const NullResponseFailure(super.message, [super.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

/// Represents a failure caused by server errors.
/// [statusCode] is the HTTP status code returned by the server.
final class ServerFailure extends Failure {
  final int statusCode;

  const ServerFailure(super.message, this.statusCode, [super.stackTrace]);

  @override
  List<Object?> get props => [message, statusCode, stackTrace];
}

/// Represents a failure caused by cache errors.
/// For example, when data cannot be read from or written to the cache.
final class CacheFailure extends Failure {
  const CacheFailure(super.message, [super.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

/// Represents a failure caused by validation errors.
/// For example, when user input is invalid or does not meet requirements.
final class ValidationFailure extends Failure {
  const ValidationFailure(super.message, [super.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}