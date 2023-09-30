import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure(
            'Connection timed out. Please check your internet connection.');

      case DioErrorType.sendTimeout:
        return ServerFailure('Sending request timed out.');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receiving response timed out.');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request canceled.');

      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps! There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later!');
    } else {
      return ServerFailure('Opps! There was an Error, Please try again!');
    }
  }
}
// class ServerFailure extends Failure{
//   ServerFailure(super.errorMessage);
//
//   factory ServerFailure.fromDioError(DioError dioError) {
//     switch (dioError.type) {
//       case DioErrorType.connectionTimeout:
//         return ServerFailure('Connection timed out. Please check your internet connection.');
//
//       case DioErrorType.sendTimeout:
//         return ServerFailure('Sending request timed out.');
//
//       case DioErrorType.receiveTimeout:
//         return ServerFailure('Receiving response timed out.');
//
//       case DioErrorType.cancel:
//         return ServerFailure('Request canceled.');
//
//       case DioErrorType.unknown:
//         if(dioError.message!.contains('SocketException')){
//           return ServerFailure('');
//         }else {
//           final statusCode = dioError.response?.statusCode;
//           if (statusCode == 404) {
//             return ServerFailure('Resource not found (404).');
//           } else if (statusCode == 500) {
//             return ServerFailure('Internal server error (500).');
//           } else {
//             return ServerFailure('Server error with status code $statusCode.');
//           }
//         }
//
//       default:
//         return ServerFailure('An unexpected error occurred: ${dioError.message}');
//     }
//   }
//   // factory ServerFailure.fromResponse (int statusCode, dynamic response){
//   //   if(statusCode == 400 || statusCode == 401 || statusCode == 403){
//   //     return ServerFailure(response['error']['message']);
//   //   } else if (statusCode == 404){
//   //     return ServerFailure('Your request was not found, Please try again later!');
//   //   } else if (statusCode == 500){
//   //     return ServerFailure('Internal Server error, Please try again later!');
//   //   } else {
//   //     return ServerFailure('Opps! There was an error, Please try again later!');
//   //   }
//   // }
// }