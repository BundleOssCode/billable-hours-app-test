import 'package:billable_hours_app/src/core/network/network_config.dart';
import 'package:billable_hours_app/src/utils/app_logger.dart';
import 'package:dio/dio.dart';

import 'network_exceptions.dart';
import 'network_interceptors.dart';
import 'network_response.dart';
import 'network_service_interface.dart';

/// Basic HTTP request service wrapper around the common
/// HTTP Methods: GET, POST, PUT, PATCH, DELETE
class NetworkService implements NetworkServiceInterface {
  static var networkSetupOptions = BaseOptions(
    //include timeout of 60secs to through exception
    connectTimeout: 60000,
    baseUrl: "https://csvdemomockappp.bundlewallet.com/",
  );

  NetworkConfigInterface _networkConfiguration;
  final Dio _dio = Dio(networkSetupOptions);

  ///  Instantiate [NetworkService] without [NetworkInterceptor]s
  ///
  ///  '''
  ///   You can instantiate the [NetworkService] using its named
  ///   constructor withInterceptors eg.
  ///      List<NetworkInterceptor>  interceptors;
  ///      NetworkServices.withInterceptors(interceptors);
  ///
  ///  '''
//  NetworkService(NetworkConfigInterface networkConfiguration) {
//    _networkConfiguration = networkConfiguration;
//  }

  ///  Instantiate [NetworkService] with [NetworkInterceptor]s
  NetworkService({
    NetworkConfigInterface networkConfiguration,
    NetworkInterceptor interceptor,
  }) {
    try {
      _networkConfiguration = networkConfiguration;
      registerInterceptor(interceptor);
    } catch (e) {
      logger.e("Error while registering interceptors");
    }
  }

  /// Add an interceptor to the internal network request handler
  registerInterceptor(NetworkInterceptor interceptor) {
    if (interceptor == null)
      throw Exception(
        "Interceptor cannot be null",
      );
    if (_dio.interceptors.contains(interceptor)) return;
    _dio.interceptors.add(interceptor);
  }

  /// Add list of interceptors to the internal network request handler
  registerInterceptors(List<NetworkInterceptor> interceptors) {
    if (interceptors == null)
      throw Exception(
        "Interceptors cannot be null",
      );

    for (var interceptor in interceptors) {
      if (!_dio.interceptors.contains(interceptor)) {
        _dio.interceptors.add(interceptor);
      }
    }
  }

  @override
  Future<NetworkServiceResponse> get(String url,
      {Map<String, dynamic> queryParameters}) async {
    Response response;
    try {
      response = await _dio.get(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
      );

      return NetworkServiceResponse(
          result: NetworkResult.SUCCESS, data: response.data);
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> post(String url,
      {Map<String, dynamic> body, Map<String, dynamic> queryParameters}) async {
    Response response;

    //TODO Will use handy meta data annotation to eliminate this boilerplate

    try {
      response = await _dio.post(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> delete(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.delete(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );
      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> patch(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.patch(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> put(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.put(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

//  @override
//  Future<File> download(String url, {String path}) async {
//    String directory = await getIt<SecuredStorageInterface>().getAppDirectory();
//    try {
//      String filepath = "$directory/$path";
//      await _dio.download(url, filepath);
//      return File(filepath);
//    } on DioError catch (e) {
//      print(e);
//      handleException(e);
//    }
//  }
}
