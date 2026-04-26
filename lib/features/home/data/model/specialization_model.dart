import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_model.dart';

part 'specialization_model.freezed.dart';
part 'specialization_model.g.dart';

@freezed
abstract class SpecializationModel with _$SpecializationModel {
  const factory SpecializationModel({
    required int id,
    required String name,
    required List<DoctorModel> doctors,
  }) = _SpecializationModel;

  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
}