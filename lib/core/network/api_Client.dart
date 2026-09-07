import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient()
  : dio = Dio(
    BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  Future<Response> post(
      String endpoint, {
        dynamic data,
      }) async {
    return await dio.post(
      endpoint,
      data: data,
    );
  }

  Future<Response> get(
      String endpoint, {
        Map<String, dynamic>? queryParameters,
      }) async {
    return await dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
  }
}