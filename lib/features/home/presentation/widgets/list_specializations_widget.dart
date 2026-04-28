import 'package:docdoc/features/home/data/model/specialization_model.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/presentation/widgets/specializations_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListSpecializationsWidget extends StatelessWidget {
  SpecializationsResponseModel specializationModel;

  ListSpecializationsWidget({super.key, required this.specializationModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),

        itemBuilder: (context, index) => SpecializationsWidget(title: specializationModel.data[index].name),
      ),
    );
  }
}
