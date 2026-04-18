import 'package:dio/dio.dart';

import '../models/auth_response.dart';
import '../models/login_request_body.dart';
import '../models/signup_request_body.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> login(LoginRequestBody body);
  Future<AuthResponseModel> signup(SignupRequestBody body);
}


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<AuthResponseModel> login(LoginRequestBody body) async {
    final response = await dio.post(
      '/auth/login',
      data: FormData.fromMap(body.toMap()),
    );

    return AuthResponseModel.fromJson(response.data);
  }

  @override
  Future<AuthResponseModel> signup(SignupRequestBody body) async {
    final response = await dio.post(
      '/auth/register',
      data: FormData.fromMap(body.toMap()),
    );

    return AuthResponseModel.fromJson(response.data);
  }
}