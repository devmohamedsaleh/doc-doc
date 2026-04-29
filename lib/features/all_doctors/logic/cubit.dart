import 'dart:async';

import 'package:docdoc/features/all_doctors/data/repo/all_doctors_repo.dart';
import 'package:docdoc/features/all_doctors/logic/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorsCubit extends Cubit<AllDoctorsState> {
  final AllDoctorsRepo repo;

  AllDoctorsCubit(this.repo) : super(const AllDoctorsState.initial());

  Timer? _searchDebounce;

  Future<void> allDoctors() async {
    emit(const AllDoctorsState.loading());

    final result = await repo.allDoctors();

    result.fold(
          (failure) => emit(AllDoctorsState.error(message: failure.message)),
          (data) => emit(AllDoctorsState.success(doctors: data.data)),
    );
  }

  Future<void> searchDoctors(String name) async {
    emit(const AllDoctorsState.loading());

    final result = await repo.searchDoctors(name);

    result.fold(
          (failure) => emit(AllDoctorsState.error(message: failure.message)),
          (data) => emit(AllDoctorsState.success(doctors: data.data)),
    );
  }

  void onSearchChanged(String value) {
    _searchDebounce?.cancel();

    _searchDebounce = Timer(
      const Duration(milliseconds: 500),
          () {
        final searchText = value.trim();

        if (searchText.isEmpty) {
          allDoctors();
        } else {
          searchDoctors(searchText);
        }
      },
    );
  }

  @override
  Future<void> close() {
    _searchDebounce?.cancel();
    return super.close();
  }
}