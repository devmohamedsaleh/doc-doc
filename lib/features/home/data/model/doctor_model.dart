import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_model.dart';
import 'doctor_specialization_model.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
abstract class DoctorModel with _$DoctorModel {
  const factory DoctorModel({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String photo,
    required String gender,
    required String address,
    required String description,
    required String degree,
    required DoctorSpecializationModel specialization,
    required CityModel city,
    @JsonKey(name: 'appoint_price') required int appointPrice,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}