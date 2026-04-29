import 'package:docdoc/features/home/data/model/specialization_model.dart';
import 'package:docdoc/features/home/presentation/widgets/specializations_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListSpecializationsWidget extends StatelessWidget {
  final List<SpecializationModel> specializations;

  const ListSpecializationsWidget({
    super.key,
    required this.specializations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: ListView.separated(
        itemCount: specializations.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          return SpecializationsWidget(
            title: specializations[index].name,
          );
        },
      ),
    );
  }
}