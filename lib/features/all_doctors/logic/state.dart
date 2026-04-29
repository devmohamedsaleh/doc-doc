import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/data/model/doctor_model.dart';


part 'state.freezed.dart';

@freezed
abstract class AllDoctorsState with _$AllDoctorsState {
  const factory AllDoctorsState.initial() = _Initial;

  const factory AllDoctorsState.loading() = _Loading;

  const factory AllDoctorsState.success({
    required List<DoctorModel> doctors,
  }) = _Success;

  const factory AllDoctorsState.error({
    required String message,
  }) = _Error;
}