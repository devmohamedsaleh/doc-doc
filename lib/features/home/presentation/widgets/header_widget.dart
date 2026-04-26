import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        ActionsWidget(icon: Icon(Icons.menu, size: 24, color: ColorsManager.black,)),
        Text("Bimore Design",style: TxtStyle.size16Weight500Grey,),
        ActionsWidget(icon: Icon(Icons.notifications_active_outlined, size: 24, color: ColorsManager.black,)),


      ],
    );
  }
}

class ActionsWidget extends StatelessWidget {
  Icon icon;
  final VoidCallback? function;
  ActionsWidget({super.key,required this.icon, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.h,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: ColorsManager.txtFeildBorderColor,
          width: 0.8.w
        )
      ),
      child: IconButton(onPressed: function, icon: icon),

    );
  }
}
