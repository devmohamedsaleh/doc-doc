import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/login_response_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(LoginResponseModel data) = _Success;
  const factory LoginState.error(String message) = _Error;
}
