import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with apiserver');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with apiserver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with apiserver');
      case DioExceptionType.badCertificate:
        return ServerFailure('send timeout with apiserver');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode as int,
            dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('send timeout with apiserver');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('socketException')) {
          return ServerFailure('no internet connection');
        }
        return ServerFailure('unexpected error ,please try again!');
      default:
        return ServerFailure('Opps There was an error ,please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found,Please Try Later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error,Please Try Later');
    } else {
      return ServerFailure('Opps There was an error ,please try again');
    }
  }
}
