// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_doctors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllDoctorsResponseModel _$AllDoctorsResponseModelFromJson(
  Map<String, dynamic> json,
) => _AllDoctorsResponseModel(
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$AllDoctorsResponseModelToJson(
  _AllDoctorsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};
