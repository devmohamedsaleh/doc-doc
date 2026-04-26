import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/core/constance/api_const.dart';
import 'package:docdoc/core/errors/failure.dart';
import 'package:docdoc/core/errors/server_failure.dart';

import '../model/specializations_response_model.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failure, SpecializationsResponseModel>> getHomeData();
}

class ImpHomeRemoteDataSource implements HomeRemoteDataSource {
  ImpHomeRemoteDataSource(this.dio);

  final Dio dio;

  @override
  Future<Either<Failure, SpecializationsResponseModel>> getHomeData() async {
    try {
      final response = await dio.get(ApiConst.getHome);

      final homeDataResponse =
      SpecializationsResponseModel.fromJson(response.data);

      return Right(homeDataResponse);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
