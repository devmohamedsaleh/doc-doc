import 'package:freezed_annotation/freezed_annotation.dart';

import 'specialization_model.dart';

part 'specializations_response_model.freezed.dart';
part 'specializations_response_model.g.dart';

@freezed
abstract class SpecializationsResponseModel with _$SpecializationsResponseModel {
  const factory SpecializationsResponseModel({
    required String message,
    required List<SpecializationModel> data,
    required bool status,
    required int code,
  }) = _SpecializationsResponseModel;

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}