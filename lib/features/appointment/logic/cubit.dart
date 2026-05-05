import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/store_appointment_request_body.dart';
import '../data/repo/appointments_repo.dart';
import 'state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentsRepo appointmentsRepo;

  AppointmentCubit(this.appointmentsRepo)
      : super(const AppointmentState.initial());

  Future<void> getAllAppointments() async {
    emit(const AppointmentState.loading());

    final result = await appointmentsRepo.getAllAppointments();

    result.fold(
          (failure) {
        emit(AppointmentState.error(message: failure.message));
      },
          (response) {
        emit(
          AppointmentState.getAppointmentsSuccess(
            appointments: response.data,
          ),
        );
      },
    );
  }

  Future<void> storeAppointment(StoreAppointmentRequestBody body) async {
    emit(const AppointmentState.loading());

    final result = await appointmentsRepo.storeAppointment(body);

    result.fold(
          (failure) {
        emit(AppointmentState.error(message: failure.message));
      },
          (message) {
        emit(
          AppointmentState.storeSuccess(
            message: message,
          ),
        );
      },
    );
  }
}