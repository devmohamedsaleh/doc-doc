import 'package:docdoc/features/home/logic/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/get_home_repo.dart';


class HomeCubit extends Cubit<HomeState> {
  final GetHomeRepo repo;

  HomeCubit(this.repo) : super(const HomeState.initial());

  Future<void> getHomeData() async {
    emit(const HomeState.loading());

    final result = await repo.getHomeData();

    result.fold(
          (failure) => emit(HomeState.error(failure.message)),
          (data) => emit(HomeState.success(data)),
    );
  }
}