import 'package:dio/dio.dart';

abstract class Failures {
  final String message;
  const Failures({required this.message});
}

class ServerFailures extends Failures {
  ServerFailures({required super.message});
  factory ServerFailures.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures(message: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailures(message: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailures(message: 'Receive Timeout');
      case DioExceptionType.badResponse:
        return ServerFailures.fromException(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailures(message: 'Request Cancelled');
      default:
        return ServerFailures(message: '$e');
    }
  }
  factory ServerFailures.fromException(
      int statusCode, Map<String, dynamic> data) {
    switch (statusCode) {
      case 400:
        return ServerFailures(message: data['error']['message']);
      case 401:
        return ServerFailures(message: data['error']['message']);

      case 403:
        return ServerFailures(message: data['error']['message']);

      case 404:
        return ServerFailures(message: 'Not Found');
      case 500:
        return ServerFailures(message: 'Internal Server Error');
      default:
        return ServerFailures(
            message: 'Something went wrong, please try again');
    }
  }
}
