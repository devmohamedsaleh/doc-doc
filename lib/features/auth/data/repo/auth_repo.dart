import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../datasources/remote_data_source.dart';
import '../models/auth_response.dart';
import '../models/login_request_body.dart';
import '../models/signup_request_body.dart';

class AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepo(this.remoteDataSource);

  Future<Either<Failure, AuthResponseModel>> login(LoginRequestBody body) async {
    return await remoteDataSource.login(body);
  }

  Future<Either<Failure, AuthResponseModel>> signUp(SignupRequestBody body) async {
    return await remoteDataSource.signup(body);
  }
}