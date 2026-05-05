import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/core/constance/api_const.dart';
import 'package:docdoc/core/errors/failure.dart';
import 'package:docdoc/core/errors/server_failure.dart';
import 'package:docdoc/features/appointment/data/models/appointments_response_model.dart';

import '../models/store_appointment_request_body.dart';

abstract class AppointmentRemoteDataSource {
  Future<Either<Failure, AppointmentsResponseModel>> getAllAppointments();

  Future<Either<Failure, String>> storeAppointment(StoreAppointmentRequestBody body);
}

class ImpAppointmentRemoteDataSource implements AppointmentRemoteDataSource {
  Dio dio;

  ImpAppointmentRemoteDataSource(this.dio);

  @override
  Future<Either<Failure, AppointmentsResponseModel>>
  getAllAppointments() async {
    try {
      final response = await dio.get(ApiConst.getAllAppointments);
      final appointmentResponse = AppointmentsResponseModel.fromJson(
        response.data,
      );
      return Right(appointmentResponse);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> storeAppointment(StoreAppointmentRequestBody body) async {
    
    try {
      final response = await dio.post(ApiConst.storeAppointments,
        data: FormData.fromMap(body.toMap()),
      );
      
      return Right(response.data ["message"] ?? "Appointment Created Successfully");
    }on DioException catch (e){
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
   
  }
}
