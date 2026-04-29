import 'package:dio/dio.dart';
import 'package:docdoc/core/constance/api_const.dart';
import 'package:docdoc/features/all_doctors/data/datasource/remote_data_source.dart';
import 'package:docdoc/features/all_doctors/data/repo/all_doctors_repo.dart';
import 'package:docdoc/features/all_doctors/logic/cubit.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/cubit.dart';
import 'package:docdoc/features/home/data/datasource/remote_data_source.dart';
import 'package:docdoc/features/home/data/repo/get_home_repo.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/datasources/remote_data_source.dart';
import '../../features/auth/data/repo/auth_repo.dart';
import '../../features/auth/logic/login_cubit/cubit.dart';
import '../../features/home/logic/cubit.dart';
import 'auth_interceptor.dart';
import 'cash_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Secure Storage
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );

  // Token Storage
  getIt.registerLazySingleton<TokenStorage>(
    () => TokenStorage(getIt<FlutterSecureStorage>()),
  );

  // Dio
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConst.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {'Accept': 'application/json'},
      ),
    );

    dio.interceptors.add(AuthInterceptor(getIt<TokenStorage>()));

    dio.interceptors.add(
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
      ),
    );

    return dio;
  });

  // Remote Data Source
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<Dio>(), getIt<TokenStorage>()),
  );
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => ImpHomeRemoteDataSource(getIt<Dio>()),
  );
  getIt.registerLazySingleton<AllDoctorsRemoteDataSource>(
        () => ImpAllDoctorsRemoteDataSource(getIt<Dio>(),),
  );

  // Repo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(getIt<AuthRemoteDataSource>()),
  );
  getIt.registerLazySingleton<GetHomeRepo>(
    () => GetHomeRepo(getIt<HomeRemoteDataSource>()),
  );
  getIt.registerLazySingleton<AllDoctorsRepo>(
        () => AllDoctorsRepo(getIt<AllDoctorsRemoteDataSource>()),
  );


  // Cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<AuthRepo>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<GetHomeRepo>()));
  getIt.registerFactory<AllDoctorsCubit>(() => AllDoctorsCubit(getIt<AllDoctorsRepo>()));
}
