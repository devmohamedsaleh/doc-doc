import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/appointment_model.dart';


part 'state.freezed.dart';

@freezed
abstract class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;

  const factory AppointmentState.loading() = _Loading;

  const factory AppointmentState.storeSuccess({
    required String message,
  }) = _StoreSuccess;

  const factory AppointmentState.getAppointmentsSuccess({
    required List<AppointmentModel> appointments,
  }) = _GetAppointmentsSuccess;

  const factory AppointmentState.error({
    required String message,
  }) = _Error;
}