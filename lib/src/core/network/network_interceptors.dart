import 'package:billable_hours_app/src/core/network/network_config.dart';
import 'package:billable_hours_app/src/core/network/network_logging.dart';
import 'package:billable_hours_app/src/utils/app_logger.dart';
import 'package:dio/dio.dart';

/// Can be registered with [NetworkService]
class NetworkInterceptor extends InterceptorsWrapper {
  NetworkConfigInterface networkConfigInterface;

  /// NOTE: [networkConfigInterface] will be overwritten
  /// on each request. This is by design for now.
  NetworkInterceptor({this.networkConfigInterface});

  /// On request interception goes here
  /// Get token from storage
  @override
  Future onRequest(RequestOptions options) async {
    final headers = {"Content-Type": "application/json"};

    networkConfigInterface = NetworkConfig(headers: headers);

    options.headers.addAll(networkConfigInterface.headers);
    logger.i(logRequest(options));
    return super.onRequest(options);
  }

  /// When error occurs, this interceptor handles it
  @override
  Future onError(DioError err) {
    return super.onError(err);
  }

  /// When it returns a response this interceptor handles it
  @override
  Future onResponse(Response response) {
    logger.i(logResponse(response));
    return super.onResponse(response);
  }
}
