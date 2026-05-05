import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/model/doctor_model.dart';
import 'patient_model.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
abstract class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required int id,
    required DoctorModel doctor,
    required PatientModel patient,

    @JsonKey(name: 'appointment_time')
    required String appointmentTime,

    @JsonKey(name: 'appointment_end_time')
    required String appointmentEndTime,

    required String status,
    required String notes,

    @JsonKey(name: 'appointment_price')
    required int appointmentPrice,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}