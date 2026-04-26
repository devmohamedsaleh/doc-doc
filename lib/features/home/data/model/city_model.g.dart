// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  governrate: GovernrateModel.fromJson(
    json['governrate'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };
