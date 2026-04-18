import 'package:docdoc/features/auth/logic/login_cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_request_body.dart';
import '../../data/repo/auth_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit(this.authRepo) : super(const LoginState.initial());

  Future<void> login(LoginRequestBody body) async {
    emit(const LoginState.loading());


      final result = await authRepo.login(body);
      result.fold(
          (failure) => emit(LoginState.error(failure.message)),
          (response)=> emit(LoginState.success(response)),
      );


  }
}