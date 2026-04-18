import 'package:docdoc/features/auth/data/models/auth_response.dart';
import 'package:docdoc/features/auth/data/models/signup_request_body.dart';
import 'package:docdoc/features/auth/data/repo/auth_repo.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignupState> {
  AuthRepo authRepo;

  SignUpCubit(this.authRepo) : super(SignupState.initial());

  Future signUp(SignupRequestBody body) async {
    emit(SignupState.loading());

    final result = await authRepo.signUp(body);
    result.fold(
      (failure) => emit(SignupState.error(failure.message)),
      (response) => emit(SignupState.success(response)),
    );
  }
}
