import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/model/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorWidget extends StatelessWidget {
  DoctorModel doctorModel;
  DoctorWidget({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 130.h,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: ColorsManager.txtFeildBorderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45.r,
              backgroundImage: const AssetImage("assets/images/doc.png"),
            ),

            SizedBox(width: 14.w),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _AvailableBadge(),

                  SizedBox(height: 8.h),

                  Text(
                    doctorModel.name,
                    style: TxtStyle.size18Weight500Grey,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    doctorModel.specialization.name,
                    style: TxtStyle.size14Weight400Grey,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    doctorModel.degree,
                    style: TxtStyle.size14Weight400Grey,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    "${doctorModel.appointPrice}\$",
                    style: TxtStyle.size12Weight500Green,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AvailableBadge extends StatelessWidget {
  const _AvailableBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 4.h,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.lightGreen,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
              color: ColorsManager.green,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 4.w),
          Text(
            "Available",
            style: TxtStyle.size12Weight500Green,
          ),
        ],
      ),
    );
  }
}