import 'package:docdoc/features/home/data/model/doctor_model.dart';
import 'package:docdoc/features/home/presentation/widgets/recommendation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListRecommendationDoc extends StatelessWidget {
  final List<DoctorModel> doctors;

  const ListRecommendationDoc({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330.h,
      child: ListView.separated(
        itemCount: doctors.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          return RecommendationWidget(
            doctorModel: doctors[index],
          );
        },
      ),
    );
  }
}