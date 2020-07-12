import 'package:dio/dio.dart';

import 'network_response.dart';

/// Thrown on unhandled API exceptions
class ApiResponseException implements Exception {
  var exceptionMessage;
  var data;

  ApiResponseException({this.exceptionMessage, this.data});

  @override
  String toString() {
    return '{exceptionMessage: $exceptionMessage, data: $data}';
  }
}

class NetworkConnectivityException implements Exception {
  var exceptionMessage = "No internet connectivity";
  NetworkConnectivityException({this.exceptionMessage});

  @override
  String toString() {
    return '{exception: $exceptionMessage}';
  }
}

NetworkServiceResponse handleException(DioError e, StackTrace trace) {
  if (e.response != null) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    var errorData = {"error": e};

    switch (e.response.statusCode) {
      case 400:
        return NetworkServiceResponse(
          result: NetworkResult.BAD_REQUEST,
          data: errorData,
          error: "Bad request to the server",
        );
        break;
      case 422:
        return NetworkServiceResponse(
          result: NetworkResult.BAD_REQUEST,
          data: errorData,
          error: "Invalid request body payload",
        );
        break;

      case 401:
        return NetworkServiceResponse(
          result: NetworkResult.UNAUTHORISED,
          data: errorData,
          error: "Unauthorized access to the server",
        );
        break;

      case 403:
        return NetworkServiceResponse(
          result: NetworkResult.FORBIDDEN,
          data: errorData,
          error: "Access forbidden by server, try again",
        );
        break;

      case 404:
        return NetworkServiceResponse(
          result: NetworkResult.NO_SUCH_ENDPOINT,
          data: errorData,
          error: "Requested data was not found",
        );
        break;

      case 405:
        return NetworkServiceResponse(
          result: NetworkResult.METHOD_DISALLOWED,
          data: errorData,
          error: e.message,
        );
        break;

      case 408:
        return NetworkServiceResponse(
          result: NetworkResult.SERVER_TIMEOUT,
          data: errorData,
          error: e.message,
        );
        break;

      case 429:
        return NetworkServiceResponse(
          result: NetworkResult.TOO_MANY_REQUESTS,
          data: errorData,
          error: "You have exceeded your request limit",
        );
        break;

      case 500:
      case 501:
      case 502:
      case 503:
        return NetworkServiceResponse(
          result: NetworkResult.SERVER_ERROR,
          data: errorData,
          error: "An error occurred form the server",
        );
        break;

      default:
        return NetworkServiceResponse(
          result: NetworkResult.FAILURE,
          data: {"error": "Unhandled Network Error"},
          error: "Request to server failed ",
        );
    }
  } else {
    // Something happened in setting up or sending the request that triggered an Error
    return NetworkServiceResponse(
      result: NetworkResult.FAILURE,
      data: {"error": e.message},
      error: e.message,
    );
  }
}
