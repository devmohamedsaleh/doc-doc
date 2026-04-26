import 'package:dio/dio.dart';

import 'cash_service.dart';

class AuthInterceptor extends Interceptor {
  final TokenStorage tokenStorage;

  AuthInterceptor(this.tokenStorage);

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final token = await tokenStorage.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}