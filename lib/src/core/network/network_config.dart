abstract class NetworkConfigInterface {
  Map<String, String> headers;
}

/// A configuration object for use by a [NetworkInterceptor]. This is
/// used to modify network options before each request.
class NetworkConfig implements NetworkConfigInterface {
  @override
  Map<String, String> headers;

  NetworkConfig({this.headers});
}
