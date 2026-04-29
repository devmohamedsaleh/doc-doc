import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class HeadlineWidget extends StatelessWidget {
  String headLineTxt;
  Icon? icon;
  final VoidCallback? function;

  HeadlineWidget({
    super.key,
    required this.headLineTxt,
    this.icon,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(headLineTxt, style: TxtStyle.size20BoldBlack),
        Spacer(),
        IconButton(onPressed: function, icon: icon ?? SizedBox()),
      ],
    );
  }
}
