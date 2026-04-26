
import 'package:flutter/material.dart';

import '../theming/colors_manager.dart';
import '../theming/styles.dart';

class AppButton extends StatelessWidget {
  String buttonTxt;
  final VoidCallback? function;
  AppButton({super.key,required this.buttonTxt,required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: 327,
        height: 52,
        decoration: BoxDecoration(
          color:ColorsManager.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text(buttonTxt,style: TxtStyle.size16Weight600White,)),
      ),
    );
  }
}