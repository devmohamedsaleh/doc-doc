import 'package:dartz/dartz.dart';
import 'package:docdoc/core/errors/failure.dart';
import 'package:docdoc/features/all_doctors/data/datasource/remote_data_source.dart';
import 'package:docdoc/features/all_doctors/data/model/all_doctors_response_model.dart';

class AllDoctorsRepo {
  final AllDoctorsRemoteDataSource allDoctorsRemoteDataSource;

  AllDoctorsRepo(this.allDoctorsRemoteDataSource);

  Future<Either<Failure, AllDoctorsResponseModel>> allDoctors() async {
    return await allDoctorsRemoteDataSource.allDoctors();
  }

  Future<Either<Failure, AllDoctorsResponseModel>> searchDoctors(
      String name,
      ) async {
    return await allDoctorsRemoteDataSource.searchDoctors(name);
  }
}