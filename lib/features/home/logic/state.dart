import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/specializations_response_model.dart';


part 'state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.success(
      SpecializationsResponseModel data,
      ) = _Success;

  const factory HomeState.error(
      String message,
      ) = _Error;
}