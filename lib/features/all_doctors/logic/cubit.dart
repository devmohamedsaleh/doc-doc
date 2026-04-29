import 'package:docdoc/features/all_doctors/data/repo/all_doctors_repo.dart';
import 'package:docdoc/features/all_doctors/logic/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorsCubit extends Cubit <AllDoctorsState>{
  AllDoctorsRepo repo;
  AllDoctorsCubit(this.repo) : super( AllDoctorsState.initial());


  Future <void> allDoctors () async {

    emit(const AllDoctorsState.loading());
    final result = await repo.allDoctors();

    result.fold(
        (failure) => emit(AllDoctorsState.error(message: failure.message)),
        (data) => emit(AllDoctorsState.success(doctors: data.data))
    );
  }




}