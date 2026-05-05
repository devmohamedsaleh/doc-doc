import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
abstract class PatientModel with _$PatientModel {
  const factory PatientModel({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String gender,
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}