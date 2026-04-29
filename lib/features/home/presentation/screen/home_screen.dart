import 'package:docdoc/features/home/logic/cubit.dart';
import 'package:docdoc/features/home/logic/state.dart';
import 'package:docdoc/features/home/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/service_locator.dart';
import '../../../../routing/routes.dart';
import '../widgets/banner_widget.dart';
import '../widgets/headline_widget.dart';
import '../widgets/list_recommendation_doc.dart';
import '../widgets/list_specializations_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getHomeData(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const SizedBox();
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              success: (data) {
                final specializations = data.data;

                final doctors =
                    specializations
                        .expand((specialization) => specialization.doctors)
                        .toList();

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16.h,
                    children: [
                      const HeaderWidget(),
                      const BannerWidget(),
                      HeadlineWidget(headLineTxt: "Specializations"),

                      ListSpecializationsWidget(
                        specializations: specializations,
                      ),

                      HeadlineWidget(
                        headLineTxt: "Recommendation Doctors",
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                        function: () {
                          Navigator.pushNamed(context, Routes.allDocs);
                        },
                      ),

                      ListRecommendationDoc(doctors: doctors),
                    ],
                  ),
                );
              },
              error: (message) {
                return Center(child: Text(message));
              },
            );
          },
        ),
      ),
    );
  }
}
