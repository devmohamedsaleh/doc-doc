import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/logic/cubit.dart';
import 'package:docdoc/features/home/logic/state.dart';
import 'package:docdoc/features/home/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/services/service_locator.dart';
import '../widgets/banner_widget.dart';
import '../widgets/list_recommendation_doc.dart';
import '../widgets/list_specializations_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<HomeCubit>()
        ..getHomeData(),
      child: HomeView(),
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
                initial: (){
                  return SizedBox();
                },
                loading: (){
                  return CircularProgressIndicator();
                },
                success: (data){
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 16.h,
                      children: [
                        HeaderWidget(),
                        BannerWidget(),
                        Text("Specializations", style: TxtStyle.size20BoldBlack),
                        ListSpecializationsWidget(specializationModel: data,),
                        Text("Recommended Doctors", style: TxtStyle.size20BoldBlack),
                        ListRecommendationDoc(doctorModel: data.data,),
                      ],
                    ),
                  );
                },
                error: (message){
                  return Text(message);
                }
            );
          },
        ),
      ),
    );
  }
}
