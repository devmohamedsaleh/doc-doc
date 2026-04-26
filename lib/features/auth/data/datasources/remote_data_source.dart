import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/core/constance/api_const.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../../core/services/cash_service.dart';
import '../models/auth_response.dart';
import '../models/login_request_body.dart';
import '../models/signup_request_body.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, AuthResponseModel>> login(LoginRequestBody body);

  Future<Either<Failure, AuthResponseModel>> signup(SignupRequestBody body);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  final TokenStorage tokenStorage;

  AuthRemoteDataSourceImpl(this.dio, this.tokenStorage);

  @override
  Future<Either<Failure, AuthResponseModel>> login(
    LoginRequestBody body,
  ) async {
    try {
      final response = await dio.post(
        ApiConst.login,
        data: FormData.fromMap(body.toMap()),
      );

      final authResponse = AuthResponseModel.fromJson(response.data);

      if (authResponse.data.token.isNotEmpty) {
        await tokenStorage.saveToken(authResponse.data.token);
      }

      return Right(authResponse);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, AuthResponseModel>> signup(
    SignupRequestBody body,
  ) async {
    try {
      final response = await dio.post(
        ApiConst.register,
        data: FormData.fromMap(body.toMap()),
      );

      final authResponse = AuthResponseModel.fromJson(response.data);

      if (authResponse.data.token.isNotEmpty) {
        await tokenStorage.saveToken(authResponse.data.token);
      }

      return Right(authResponse);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    }
  }
}
