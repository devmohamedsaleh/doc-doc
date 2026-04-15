import 'package:docdoc/features/login/data/repository/login_repository.dart';
import 'package:docdoc/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit (this.loginRepository):super(LoginState.initial());
  BaseLoginRepository loginRepository;

  Future login ({required String email, required String password})async{
    emit(LoginState.loading());
    try{
     final result = await loginRepository.login(email: email, password: password);
      emit(LoginState.success(result));
    }catch (e){
      emit(LoginState.error(e.toString()));
    }
  }

}