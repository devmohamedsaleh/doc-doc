import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/banner_widget.dart';
import '../widgets/list_recommendation_doc.dart';
import '../widgets/list_specializations_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.h,
            children: [
              HeaderWidget(),
              BannerWidget(),
              Text("Specializations", style: TxtStyle.size20BoldBlack),
              ListSpecializationsWidget(),
              Text("Recommended Doctors", style: TxtStyle.size20BoldBlack),
              ListRecommendationDoc(),
            ],
          ),
        ),
      ),
    );
  }
}
