// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentsResponseModel _$AppointmentsResponseModelFromJson(
  Map<String, dynamic> json,
) => _AppointmentsResponseModel(
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$AppointmentsResponseModelToJson(
  _AppointmentsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};
