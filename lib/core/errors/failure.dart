import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with API Service');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with API Service');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with API Service');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate from API Service');

      case DioExceptionType.badResponse:
        if (dioException.response != null) {
          final statusCode = dioException.response!.statusCode;
          final statusMessage = dioException.response!.statusMessage;
          return ServerFailure(
            'Received invalid status code: $statusCode - $statusMessage',
          );
        } else {
          return ServerFailure('Received invalid response from API Service');
        }

      case DioExceptionType.cancel:
        return ServerFailure('Request to API Service was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure(
          'Connection error occurred while communicating with API Service',
        );

      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error occurred, please try again');
    }
  }
}
