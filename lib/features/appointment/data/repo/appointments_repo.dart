import 'package:dartz/dartz.dart';
import 'package:docdoc/features/appointment/data/datasource/remote_data_source.dart';

import '../../../../core/errors/failure.dart';
import '../models/appointments_response_model.dart';
import '../models/store_appointment_request_body.dart';

class AppointmentsRepo {

  AppointmentRemoteDataSource appointmentRemoteDataSource;
  AppointmentsRepo(this.appointmentRemoteDataSource);

  Future<Either<Failure, AppointmentsResponseModel>> getAllAppointments() async {
    return await appointmentRemoteDataSource.getAllAppointments();
  }

  Future<Either<Failure, String>> storeAppointment(StoreAppointmentRequestBody body) async {
    return  await appointmentRemoteDataSource.storeAppointment(body);
  }
}