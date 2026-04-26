import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 354.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.r)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24.r),topRight: Radius.circular(24.r)),
                child: Image.asset("assets/images/doc.png"),
              ),
              Positioned(
                top: 12.h,
                 left: 12.w,
                child: Container(
                  width: 84,
                  height: 23,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightGreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    spacing: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: ColorsManager.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text("Available", style: TxtStyle.size12Weight500Green),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 280,
            height: 48,
            color: ColorsManager.green2,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Madelyn Hospital",style: TxtStyle.size16Weight500White,),
                  Image.asset("assets/images/hospital.png"),

                ],
              ),
            ),
          ),
          Container(
            width: 280.w,
            height: 107.h,
            decoration: BoxDecoration(
              color: ColorsManager.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24.r),bottomRight: Radius.circular(24.r)),

                border: Border.all(
                color: ColorsManager.txtFeildBorderColor,
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                spacing: 1.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h,),
                  Text("Dr. Marci Maiden",style: TxtStyle.size18Weight500Grey,),
                  Text("Internist Specialist ",style: TxtStyle.size16Weight500MoreGrey,),
                  Text("Consultant ",style: TxtStyle.size16Weight500MoreGrey,),
                  Text("20\$",style: TxtStyle.size12Weight500Green,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
