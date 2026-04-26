import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_specialization_model.freezed.dart';
part 'doctor_specialization_model.g.dart';

@freezed
abstract class DoctorSpecializationModel with _$DoctorSpecializationModel {
  const factory DoctorSpecializationModel({
    required int id,
    required String name,
  }) = _DoctorSpecializationModel;

  factory DoctorSpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorSpecializationModelFromJson(json);
}