import 'package:docdoc/core/services/service_locator.dart';
import 'package:docdoc/features/all_doctors/logic/cubit.dart';
import 'package:docdoc/features/all_doctors/presentation/widgets/doctor_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/state.dart';
import '../widgets/search_text_form_field.dart';

class AllDocScreen extends StatelessWidget {
  const AllDocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AllDoctorsCubit>()..allDoctors(),
      child: const AllDocsView(),
    );
  }
}

class AllDocsView extends StatelessWidget {
  const AllDocsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),

              SearchTextFormField(
                onChanged: (value) {
                  context.read<AllDoctorsCubit>().onSearchChanged(value);
                },
              ),

              SizedBox(height: 16.h),

              Expanded(
                child: BlocBuilder<AllDoctorsCubit, AllDoctorsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () {
                        return const SizedBox();
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      success: (doctors) {
                        if (doctors.isEmpty) {
                          return const Center(
                            child: Text("No doctors found"),
                          );
                        }

                        return DoctorList(
                          doctors: doctors,
                        );
                      },
                      error: (message) {
                        return Center(
                          child: Text(message),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}