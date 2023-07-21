import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';
import 'package:orion/app_configuration.dart';

extension GalaxyClient on GalaxyApiClientDart {
  static GalaxyApiClientDart? _instance;

  void setBearerToken(final String token) {
    dio.options.headers["Authorization"] = "Bearer $token";
  }

  void destroyBearerToken() {
    dio.options.headers.remove("Authorization");
  }

  /// Access client singleton instance.
  static GalaxyApiClientDart get instance {
    GalaxyApiClientDart? local = _instance;
    if (local != null) return local;

    _instance = local = GalaxyApiClientDart(
      basePathOverride: "https://${AppConfiguration.serverEndpoint}",
      dio: Dio()
        ..options = BaseOptions(
          baseUrl: "https://${AppConfiguration.serverEndpoint}",
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          headers: {
            "User-Agent": "OrionApp 0.0.1",
            "Accept-Language": "en",
          },
        )
        ..interceptors.addAll([
          GalaxyClientErrorInterceptor(),
        ])
    );

    return local;
  }
}

/// Defines a Galaxy API normalized error response.
class GalaxyClientError extends DioException implements Equatable {
  final String? appCode;
  final int statusCode;
  final DateTime timestamp;

  GalaxyClientError(final DioException parent, {
    required String message,
    this.appCode,
    required this.statusCode,
    required this.timestamp,
  }): super(
    requestOptions: parent.requestOptions,
    message: message,
    response: parent.response,
    type: parent.type,
    error: parent.error,
    stackTrace: parent.stackTrace,
  );

  @override
  bool? get stringify => null;

  @override
  List<Object?> get props => [appCode, statusCode, message, timestamp];

  @override
  String toString() => "GalaxyClientError [${type.name}]: $message";
}

/// Intercepts DIO library errors and converts them to Galaxy client errors.
class GalaxyClientErrorInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final String message;
    final String? appCode;
    final int statusCode;
    final DateTime timestamp;

    final Map<String,dynamic>? data = err.response?.data;
    if (data != null) {
      appCode = data["app_code"];
      statusCode = data["status_code"];
      message = data["message"];
      timestamp = DateTime.parse(data["timestamp"]);
    } else {
      message = "An unknown failure occurred, please try again!";
      appCode = null;
      statusCode = 0;
      timestamp = DateTime.now();
    }

    handler.reject(GalaxyClientError(
      err,
      message: message,
      appCode: appCode,
      statusCode: statusCode,
      timestamp: timestamp,
    ));
  }
}
