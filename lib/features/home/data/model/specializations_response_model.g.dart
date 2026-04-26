// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
  Map<String, dynamic> json,
) => _SpecializationsResponseModel(
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => SpecializationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$SpecializationsResponseModelToJson(
  _SpecializationsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};
