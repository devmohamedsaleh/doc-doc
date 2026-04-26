import 'package:freezed_annotation/freezed_annotation.dart';

part 'governrate_model.freezed.dart';
part 'governrate_model.g.dart';

@freezed
abstract class GovernrateModel with _$GovernrateModel {
  const factory GovernrateModel({
    required int id,
    required String name,
  }) = _GovernrateModel;

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
}