import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/core/constance/api_const.dart';
import 'package:docdoc/core/errors/failure.dart';
import 'package:docdoc/core/errors/server_failure.dart';
import 'package:docdoc/features/all_doctors/data/model/all_doctors_response_model.dart';

abstract class AllDoctorsRemoteDataSource {
  Future<Either<Failure, AllDoctorsResponseModel>> AllDoctors();
}

class ImpAllDoctorsRemoteDataSource
    implements AllDoctorsRemoteDataSource {
  Dio dio;

  ImpAllDoctorsRemoteDataSource(this.dio);

  @override
  Future<Either<Failure, AllDoctorsResponseModel>> AllDoctors() async {
    try {
      final response = await dio.get(ApiConst.getAllDocs);

      final allDoctorResponse = AllDoctorsResponseModel.fromJson(response.data);

      return Right(allDoctorResponse);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
