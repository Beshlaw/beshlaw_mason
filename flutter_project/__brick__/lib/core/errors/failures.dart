abstract class Failure {
  final String message;
  final int statusCode;

  const Failure(this.message, this.statusCode);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server Error', super.statusCode = 500]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache Error', super.statusCode = 500]);
}
