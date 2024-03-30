import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../../../di.dart';
import 'api_client.dart';

class ApiClientProvider {
  static void init({bool forceInit = false}) {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);
    dio.interceptors.addAll([

    ]);
    // By pass certificate
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient(context: SecurityContext(withTrustedRoots: false));
        client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);

        return client;
      },
    );
    getIt.registerLazySingleton<ApiClient>(() => ApiClient(dio, baseUrl: ''));
  }
}
