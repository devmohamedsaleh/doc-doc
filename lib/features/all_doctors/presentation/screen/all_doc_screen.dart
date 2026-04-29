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
      create: (context) =>
      getIt<AllDoctorsCubit>()
        ..allDoctors(),
      child: AllDocsView(),
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
            spacing: 16,
            children: [
              SearchTextFormField(),
              BlocBuilder<AllDoctorsCubit, AllDoctorsState>(
                builder: (context, state) {
                  return state.when(

                      initial: (){
                        return SizedBox();
                      },
                      loading: (){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      success: (data){
                        return Expanded(child: DoctorList(doctors: data,));
                      },
                      error: (message){
                        return Center(child: Text(message));
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
