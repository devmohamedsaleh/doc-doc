import 'package:dartz/dartz.dart';
import 'package:docdoc/core/errors/failure.dart';
import 'package:docdoc/features/home/data/datasource/remote_data_source.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';

class GetHomeRepo {
  GetHomeRepo(this.homeRemoteDataSource);

  final HomeRemoteDataSource homeRemoteDataSource;

  Future<Either<Failure, SpecializationsResponseModel>> getHomeData() async {
    return await homeRemoteDataSource.getHomeData();
  }
}
