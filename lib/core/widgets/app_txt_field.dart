
import 'package:flutter/material.dart';

import '../theming/colors_manager.dart';
import '../theming/styles.dart';

class AppTxtField extends StatefulWidget {
  Widget ?suffixFeildIcon;
  bool? secureTxt;
  String hintTxt;
  TextEditingController textEditingController;
  AppTxtField({super.key,required this.hintTxt, required this.textEditingController,this.secureTxt, this.suffixFeildIcon});

  @override
  State<AppTxtField> createState() => _AppTxtFieldState();
}

class _AppTxtFieldState extends State<AppTxtField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,

      decoration: InputDecoration(

          hintText: widget.hintTxt,
          hintStyle: TxtStyle.size14Weight400Grey,
          fillColor:ColorsManager.txtFeildFillColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.txtFeildBorderColor,
              )
          )
      ),
    );
  }
}