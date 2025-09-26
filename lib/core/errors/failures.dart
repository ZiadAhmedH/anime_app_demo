// core/errors/failures.dart
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;
  const Failure([this.message]);

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure([super.message]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message]);
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure([super.message]);
}

class LocalFailure extends Failure {
  const LocalFailure([super.message]);
}
