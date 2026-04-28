import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsWidget extends StatelessWidget {
  String title;
  SpecializationsWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          color: ColorsManager.txtFeildBorderColor,
          width: 1.w,
        ),
      ),
      child: Center(
        child: Text(title,
        style: TxtStyle.size16Weight600DarkGrey,
        ),
      ),
    );
  }
}
