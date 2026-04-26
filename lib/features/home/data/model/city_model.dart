import 'package:freezed_annotation/freezed_annotation.dart';

import 'governrate_model.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
abstract class CityModel with _$CityModel {
  const factory CityModel({
    required int id,
    required String name,
    required GovernrateModel governrate,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}