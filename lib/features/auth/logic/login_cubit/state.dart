import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/auth_response.dart';

part 'state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(AuthResponseModel response) = _Success;
  const factory LoginState.error(String message) = _Error;
}