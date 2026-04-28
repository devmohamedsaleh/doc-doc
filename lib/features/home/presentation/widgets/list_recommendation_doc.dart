import 'package:docdoc/features/home/data/model/doctor_model.dart';
import 'package:docdoc/features/home/data/model/specialization_model.dart';
import 'package:docdoc/features/home/presentation/widgets/recommendation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListRecommendationDoc extends StatelessWidget {
  List<DoctorModel> doctorModel;
  ListRecommendationDoc({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330.h,
      child: ListView.separated(
          separatorBuilder: (_, __) =>  SizedBox(width: 12.w),

        itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

        return RecommendationWidget(doctorModel: doctorModel[index],);
      }),
    );
  }
}
