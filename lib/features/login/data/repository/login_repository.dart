import 'package:dio/dio.dart';

import '../models/login_response_model.dart';

abstract class BaseLoginRepository {
  Future<LoginResponseModel> login({
    required String email,
    required String password,
  });
}

class LoginRepository implements BaseLoginRepository {
  Dio dio;
  LoginRepository(this.dio);

  @override
  Future<LoginResponseModel> login({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      "https://vcare.integration25.com/api/auth/login",
      data: {"email": email, "password": password},
    );
    return LoginResponseModel.fromJson(response.data);
  }
}
