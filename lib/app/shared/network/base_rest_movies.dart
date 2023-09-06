import 'dart:developer';

import 'package:dio/dio.dart';

class BaseRestMovies {
  Future<Map> movieRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    Dio dio = Dio();

    final requestHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'content-type': 'application/json',
        'accept': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3ZmMyYzUxYmQwY2UzYmY5OTllZTdkZDczOGYzZGExZCIsInN1YiI6IjVhODA0OGY4OTI1MTQxNDEwNDAxYzkwYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Hg0Np6mcPxcovCPxmonNeLFePCGGYULZPx-H_GBVSdE',
        'api_key': '7fc2c51bd0ce3bf999ee7dd738f3da1d',
        'language': 'pt-br',
      });

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: requestHeaders,
          method: method,
        ),
        data: body,
      );

      return response.data;
    } on DioException catch (e, s) {
      log('Dio Connection Error -->', error: e, stackTrace: s);
      return e.response?.data ?? {};
    } on Exception catch (e, s) {
      log('Error -->', error: e, stackTrace: s);
      return {};
    }
  }
}
