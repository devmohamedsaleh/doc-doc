// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecializationModel _$SpecializationModelFromJson(Map<String, dynamic> json) =>
    _SpecializationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doctors:
          (json['doctors'] as List<dynamic>)
              .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$SpecializationModelToJson(
  _SpecializationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};
