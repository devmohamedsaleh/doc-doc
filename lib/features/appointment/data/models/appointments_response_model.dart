import 'package:freezed_annotation/freezed_annotation.dart';

import 'appointment_model.dart';

part 'appointments_response_model.freezed.dart';
part 'appointments_response_model.g.dart';

@freezed
abstract class AppointmentsResponseModel with _$AppointmentsResponseModel {
  const factory AppointmentsResponseModel({
    required String message,
    required List<AppointmentModel> data,
    required bool status,
    required int code,
  }) = _AppointmentsResponseModel;

  factory AppointmentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsResponseModelFromJson(json);
}