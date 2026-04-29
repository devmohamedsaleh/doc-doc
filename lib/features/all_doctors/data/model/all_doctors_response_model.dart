import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/model/doctor_model.dart';

part 'all_doctors_response_model.freezed.dart';
part 'all_doctors_response_model.g.dart';

@freezed
abstract class AllDoctorsResponseModel with _$AllDoctorsResponseModel {
  const factory AllDoctorsResponseModel({
    required String message,
    required List<DoctorModel> data,
    required bool status,
    required int code,
  }) = _AllDoctorsResponseModel;

  factory AllDoctorsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllDoctorsResponseModelFromJson(json);
}