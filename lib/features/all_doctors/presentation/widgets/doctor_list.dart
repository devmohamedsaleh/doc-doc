import 'package:docdoc/features/all_doctors/presentation/widgets/doctor_widget.dart';
import 'package:docdoc/features/home/data/model/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorList extends StatelessWidget {
  final List<DoctorModel> doctors;

  const DoctorList({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return DoctorWidget(
          doctorModel: doctors[index],
        );
      },
      separatorBuilder: (_, __) => SizedBox(height: 16.h),
      itemCount: doctors.length,
    );
  }
}