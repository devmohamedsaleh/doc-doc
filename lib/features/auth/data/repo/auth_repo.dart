import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../datasources/remote_data_source.dart';
import '../models/auth_response.dart';
import '../models/login_request_body.dart';
import '../models/signup_request_body.dart';

class AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepo(this.remoteDataSource);


  Future<Either<Failure,AuthResponseModel>> login(LoginRequestBody body) async {
    try {
      final response = await remoteDataSource.login(body);
      return Right(response);

    }on DioException catch(e){
      return Left(ServerFailure.fromDioException(e));

    }
  }

  Future<Either<Failure,AuthResponseModel>> signUp(SignupRequestBody body) async {
    try {
      final response = await remoteDataSource.signup(body);
      return Right(response);

    }on DioException catch(e){
      return Left(ServerFailure.fromDioException(e));

    }
  }
}