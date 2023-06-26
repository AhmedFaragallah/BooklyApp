import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;

  const Failure(this.errorMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMassage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout Was TimeOut');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout Was TimeOut');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout Was TimeOut');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate Was TimeOut');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer Was Cancel ');
      case DioExceptionType.connectionError:
        return ServerFailure('There Was ConnectionError With ApiServer ');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown Error , Please Try again Later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not Found , Please try Later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error , Please try Later');
    } else {
      return ServerFailure('Opps There Was An Error , Please try Again ');
    }
  }
}
